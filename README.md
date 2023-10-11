# Terraform GCP GitHub OIDC Provider
[![CI](https://github.com/saidsef/terraform-GCP-github-oidc/actions/workflows/ci.yaml/badge.svg)](#deployment--usage) ![GitHub issues](https://img.shields.io/github/issues-raw/saidsef/terraform-GCP-gitlab-oidc) [![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](./LICENSE.md)

This Terraform module enables you to configure GitHub Actions as an GCP IAM OIDC identity provider in GCP, which enables GitHub Actions to access resources within an GCP account(s) without requiring long-lived credentials to be stored as GitHub secrets.

## Prerequisites

- GCP Project(s) and credentials
- GitHub repository
- Terraform >= 1.x
- Profit?

## Deployment / Usage

```terraform
provider "GCP" {
  region  = var.region
  project = var.project_id
}

module "github_oidc" {
  source  = "saidsef/github-oidc/GCP"
  version = ">= 1"

}
```

## Provider Specifications and Requirements

Please see [TERRAFORM.md](./TERRAFORM.md)

## GitHub Actions

Retrieve temporary credentials:

## Source

Our latest and greatest source of `terraform-gcp-github-oidc` can be found on [GitHub](https://github.com/saidsef/terraform-gcp-github-oidc/fork). Fork us!

## Contributing

We would :heart: you to contribute by making a [pull request](https://github.com/saidsef/terraform-gcp-github-oidc/pulls).

Please read the official [Contribution Guide](./CONTRIBUTING.md) for more information on how you can contribute.
