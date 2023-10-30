output "pool_name" {
  description = "Pool name"
  value       = google_iam_workload_identity_pool.pool.name
  sensitive   = false
}

output "pool_id" {
  description = "Pool ID"
  value       = google_iam_workload_identity_pool.pool.id
  sensitive   = false
}

output "pool_display_name" {
  description = "Pool display name"
  value       = google_iam_workload_identity_pool.pool.display_name
  sensitive   = false
}

output "provider_name" {
  description = "Provider name"
  value       = google_iam_workload_identity_pool_provider.provider.name
  sensitive   = false
}

output "provider_id" {
  description = "Provider ID"
  value       = google_iam_workload_identity_pool_provider.provider.id
  sensitive   = false
}

output "provider_display_name" {
  description = "Provider display name"
  value       = google_iam_workload_identity_pool_provider.provider.display_name
  sensitive   = false
}

output "service_account_id" {
  description = "Service account ID"
  value       = google_service_account.sa.account_id
  sensitive   = false
}

output "service_account_display_name" {
  description = "Service account display name"
  value       = google_service_account.sa.display_name
  sensitive   = false
}

output "service_account_name" {
  description = "Service account name"
  value       = google_service_account.sa.name
  sensitive   = false
}

output "service_account_email" {
  description = "Service account email"
  value       = google_service_account.sa.email
  sensitive   = false
}
