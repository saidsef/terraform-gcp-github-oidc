## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4, < 5 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | >= 4, < 5 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_github_oidc"></a> [github\_oidc](#module\_github\_oidc) | saidsef/github-oidc/gcp | >= 1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Google Cloud Project ID | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Google Cloud Region | `string` | `"us-central1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pool_name"></a> [pool\_name](#output\_pool\_name) | Pool name |
