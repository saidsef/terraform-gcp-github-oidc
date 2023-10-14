resource "google_service_account" "sa" {
  account_id   = var.pool_id
  description  = format("Service account used by %s", var.pool_id)
  display_name = format("A service account to interact with %s", var.pool_id)
}
