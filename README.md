# Terraform GCP GitHub OIDC Provider
[![CI](https://github.com/saidsef/terraform-gcp-github-oidc/actions/workflows/ci.yaml/badge.svg)](#deployment--usage) ![GitHub issues](https://img.shields.io/github/issues-raw/saidsef/terraform-gcp-github-oidc) [![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](./LICENSE.md)

This Terraform module enables you to configure GitHub Actions as an GCP IAM OIDC identity provider in GCP, which enables GitHub Actions to access resources within an GCP account(s) without requiring long-lived credentials to be stored as GitHub secrets.

## Prerequisites

- GCP Project(s) and credentials
- GitHub repository
- Terraform >= 1.x
- Profit?

## Deployment / Usage

```terraform
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

  repositories = [{
    org_name = "saidsef"
    repository = "terraform-gcp-github-oidc"
  }]

}
```

> **_NOTE:_** You can undelete a provider for up to 30 days after deletion. After 30 days, deletion is permanent. Until a provider is permanently deleted, you cannot reuse its name when creating a new provider.

## Provider Specifications and Requirements

Please see [TERRAFORM.md](./TERRAFORM.md)

## GitHub Actions

Retrieve temporary credentials:

## Source

Our latest and greatest source of `terraform-gcp-github-oidc` can be found on [GitHub](https://github.com/saidsef/terraform-gcp-github-oidc/fork). Fork us!

## Contributing

We would :heart: you to contribute by making a [pull request](https://github.com/saidsef/terraform-gcp-github-oidc/pulls).

Please read the official [Contribution Guide](./CONTRIBUTING.md) for more information on how you can contribute.

## Useful Links

- [GitHub OpenID Connect Token](https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/about-security-hardening-with-openid-connect)
- [Terraform Pool Provider](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider)
- [Terraform Attribute Maping](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider#attribute_mapping)
- [Terraform Token Specification](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/dynamic-provider-credentials/workload-identity-tokens#token-specification)
- [GCP Configuration](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/dynamic-provider-credentials/gcp-configuration)
