terraform {
  required_providers {

    google = {
      source  = "hashicorp/google"
      version = ">= 5, < 9"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 5, < 9"
    }
  }

  required_version = "~> 1"
}
