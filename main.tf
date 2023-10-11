resource "google_iam_workload_identity_pool" "pool" {
  provider = google-beta

  description               = var.pool_description
  disabled                  = false
  display_name              = var.pool_display_name
  project                   = var.project_id
  workload_identity_pool_id = var.pool_id
}

resource "google_iam_workload_identity_pool_provider" "provider" {
  provider = google-beta

  attribute_condition                = var.attribute_condition
  attribute_mapping                  = var.attribute_mapping
  description                        = var.provider_description
  display_name                       = var.provider_display_name
  project                            = var.project_id
  workload_identity_pool_id          = google_iam_workload_identity_pool.pool.workload_identity_pool_id
  workload_identity_pool_provider_id = var.provider_id

  oidc {
    allowed_audiences = var.allowed_audiences
    issuer_uri        = var.issuer_uri
  }
}

resource "google_service_account_iam_member" "sa" {
  for_each = var.sa_mapping

  service_account_id = each.value.sa_name
  role               = "roles/iam.workloadIdentityUser"
  member             = "principalSet://iam.googleapis.com/${google_iam_workload_identity_pool.pool.name}/${each.value.attribute}"
}
