variable "project_id" {
  type        = string
  description = "Project ID to create Workload ID Pool"
  sensitive   = false
}

variable "pool_id" {
  type        = string
  description = "Workload Identity Pool ID"
  sensitive   = false
}

variable "issuer_uri" {
  type        = string
  description = "Workload Identity Pool Issuer URL"
  default     = "https://token.actions.githubusercontent.com"
  sensitive   = false
}

variable "attach_default_roles" {
  type        = list(string)
  description = "Attach default IAM Editor role which allows management of all resources"
  default     = ["roles/editor", "roles/iam.workloadIdentityUser"]
  sensitive   = false
}

variable "attach_extra_roles" {
  type        = list(string)
  description = "Attach extra IAM roles to service account"
  default     = []
  sensitive   = false
}

variable "attribute_condition" {
  type        = string
  description = "Workload Identity Pool Provider attribute condition expression"
  default     = null
  sensitive   = false
}

variable "attribute_mapping" {
  type        = map(any)
  description = "Workload Identity Pool Provider attribute mapping, [Token Specification](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/dynamic-provider-credentials/workload-identity-tokens#token-specification)"
  default = {
    "google.subject"       = "assertion.sub"
    "attribute.actor"      = "assertion.actor"
    "attribute.aud"        = "assertion.aud"
    "attribute.repository" = "assertion.repository"
    "attribute.ref"        = "assertion.ref"
  }
  sensitive = false
}

variable "allowed_audiences" {
  type        = list(string)
  description = "Workload Identity Pool Provider allowed audiences, [Terraform Cloud](https://cloud.google.com/iam/docs/workload-identity-federation-with-deployment-pipelines#terraform-cloud)"
  default     = []
  sensitive   = false
}

variable "enable_required_services" {
  type        = list(string)
  description = "Enabled required Services APIs"
  default     = ["iam.googleapis.com", "iamcredentials.googleapis.com", "cloudresourcemanager.googleapis.com", "sts.googleapis.com"]
  sensitive   = false
}

variable "repositories" {
  type = list(object({
    org_name   = string
    repository = string
  }))
  default = [{
    org_name   = null
    repository = null
  }]
  description = "List of repository organisation and branche names"
  sensitive   = false
}
