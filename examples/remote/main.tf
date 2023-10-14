provider "google" {
  region  = var.region
  project = var.project_id
}

provider "google-beta" {
  region  = var.region
  project = var.project_id
}

module "github_oidc" {
  source  = "saidsef/github-oidc/gcp"
  version = ">= 1"

  project_id = var.project_id
  pool_id    = "github-action"
}