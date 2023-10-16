resource "google_project_service" "service" {
  for_each = toset(var.enable_required_services)

  project                    = var.project_id
  service                    = each.value
  disable_dependent_services = false # It is advisable to set this to false
  disable_on_destroy         = false # It is advisable to set this to false

}