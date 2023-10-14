## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4, < 5 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | >= 4, < 5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.84.0 |
| <a name="provider_google-beta"></a> [google-beta](#provider\_google-beta) | 4.84.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google-beta_google_iam_workload_identity_pool.pool](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_iam_workload_identity_pool) | resource |
| [google-beta_google_iam_workload_identity_pool_provider.provider](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_iam_workload_identity_pool_provider) | resource |
| [google-beta_google_service_account_iam_member.sa](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_service_account_iam_member) | resource |
| [google_service_account.sa](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_audiences"></a> [allowed\_audiences](#input\_allowed\_audiences) | Workload Identity Pool Provider allowed audiences | `list(string)` | `[]` | no |
| <a name="input_attribute_condition"></a> [attribute\_condition](#input\_attribute\_condition) | Workload Identity Pool Provider attribute condition expression, [More info](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider#attribute_condition) | `string` | `null` | no |
| <a name="input_attribute_mapping"></a> [attribute\_mapping](#input\_attribute\_mapping) | Workload Identity Pool Provider attribute mapping, [More info](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider#attribute_mapping) | `map(any)` | <pre>{<br>  "attribute.actor": "assertion.actor",<br>  "attribute.aud": "assertion.aud",<br>  "attribute.repository": "assertion.repository",<br>  "google.subject": "assertion.sub"<br>}</pre> | no |
| <a name="input_issuer_uri"></a> [issuer\_uri](#input\_issuer\_uri) | Workload Identity Pool Issuer URL | `string` | `"https://token.actions.githubusercontent.com"` | no |
| <a name="input_pool_description"></a> [pool\_description](#input\_pool\_description) | Workload Identity Pool description | `string` | `"Workload Identity Pool managed by Terraform"` | no |
| <a name="input_pool_display_name"></a> [pool\_display\_name](#input\_pool\_display\_name) | Workload Identity Pool display name | `string` | `null` | no |
| <a name="input_pool_id"></a> [pool\_id](#input\_pool\_id) | Workload Identity Pool ID | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Project id to create Workload ID Pool | `string` | n/a | yes |
| <a name="input_provider_description"></a> [provider\_description](#input\_provider\_description) | Workload Identity Pool Provider description | `string` | `"Workload Identity Pool Provider managed by Terraform"` | no |
| <a name="input_provider_display_name"></a> [provider\_display\_name](#input\_provider\_display\_name) | Workload Identity Pool Provider display name | `string` | `null` | no |
| <a name="input_provider_id"></a> [provider\_id](#input\_provider\_id) | Workload Identity Pool Provider ID | `string` | n/a | yes |
| <a name="input_repositories"></a> [repositories](#input\_repositories) | List of repository organisation and branche names | <pre>list(object({<br>    org_name   = string<br>    repository = string<br>  }))</pre> | <pre>[<br>  {<br>    "org_name": null,<br>    "repository": null<br>  }<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pool_display_name"></a> [pool\_display\_name](#output\_pool\_display\_name) | Pool display name |
| <a name="output_pool_id"></a> [pool\_id](#output\_pool\_id) | Pool ID |
| <a name="output_pool_name"></a> [pool\_name](#output\_pool\_name) | Pool name |
| <a name="output_provider_display_name"></a> [provider\_display\_name](#output\_provider\_display\_name) | Provider display name |
| <a name="output_provider_id"></a> [provider\_id](#output\_provider\_id) | Provider ID |
| <a name="output_provider_name"></a> [provider\_name](#output\_provider\_name) | Provider name |
