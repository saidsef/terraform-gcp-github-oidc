terraform {
  required_providers {

    google = {
      source  = "hashicorp/google"
      version = ">= 5, < 8"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 5, < 8"
    }
  }

  required_version = "~> 1"
}
