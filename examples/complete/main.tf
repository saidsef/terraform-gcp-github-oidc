provider "google" {
  region  = var.region
  project = var.project_id
}

provider "google-beta" {
  region  = var.region
  project = var.project_id
}

module "github_oidc" {
  source = "../../"

  project_id  = var.project_id
  pool_id     = "github-action"
  provider_id = "github-actions"
}
