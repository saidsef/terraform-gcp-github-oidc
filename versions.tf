terraform {
  required_providers {

    google = {
      source  = "hashicorp/google"
      version = ">= 4, < 5"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 4, < 6"
    }
  }

  required_version = "~> 1"
}
