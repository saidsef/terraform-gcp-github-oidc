resource "google_iam_workload_identity_pool" "pool" {
  provider = google-beta

  description               = format("Workload Identity Pool for %s", var.pool_id)
  disabled                  = false
  display_name              = format("Workload Identity Pool for %s", var.pool_id)
  project                   = var.project_id
  workload_identity_pool_id = var.pool_id
}

resource "google_iam_workload_identity_pool_provider" "provider" {
  provider = google-beta

  attribute_condition                = var.attribute_condition
  attribute_mapping                  = var.attribute_mapping
  description                        = format("Workload Identity Pool Provider for %s-provider", var.pool_id)
  display_name                       = format("%s-provider", var.pool_id)
  project                            = var.project_id
  workload_identity_pool_id          = google_iam_workload_identity_pool.pool.workload_identity_pool_id
  workload_identity_pool_provider_id = format("%s-provider", var.pool_id)

  oidc {
    allowed_audiences = var.allowed_audiences
    issuer_uri        = var.issuer_uri
  }
}

resource "google_service_account_iam_member" "sa" {
  provider = google-beta

  for_each = zipmap([for repo in var.repositories : repo.org_name], var.repositories)

  service_account_id = google_service_account.sa.name
  role               = "roles/iam.workloadIdentityUser"
  member             = "principalSet://iam.googleapis.com/${google_iam_workload_identity_pool.pool.name}/attribute.repository/${each.value.org_name}/${each.value.repository}"
}
