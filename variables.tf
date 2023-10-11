variable "project_id" {
  type        = string
  description = "Project id to create Workload ID Pool"
  nullable    = false
  sensitive   = false
}

variable "pool_id" {
  type        = string
  description = "Workload Identity Pool ID"
  nullable    = false
  sensitive   = false
}

variable "pool_display_name" {
  type        = string
  description = "Workload Identity Pool display name"
  default     = null
  sensitive   = false
}

variable "pool_description" {
  type        = string
  description = "Workload Identity Pool description"
  default     = "Workload Identity Pool managed by Terraform"
  sensitive   = false
}

variable "provider_id" {
  type        = string
  description = "Workload Identity Pool Provider ID"
  sensitive   = false
}

variable "issuer_uri" {
  type        = string
  description = "Workload Identity Pool Issuer URL"
  default     = "https://token.actions.githubusercontent.com"
  sensitive   = false
}

variable "provider_display_name" {
  type        = string
  description = "Workload Identity Pool Provider display name"
  default     = null
  sensitive   = false
}

variable "provider_description" {
  type        = string
  description = "Workload Identity Pool Provider description"
  default     = "Workload Identity Pool Provider managed by Terraform"
  sensitive   = false
}

variable "attribute_condition" {
  type        = string
  description = "Workload Identity Pool Provider attribute condition expression, [More info](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider#attribute_condition)"
  default     = null
  sensitive   = false
}

variable "attribute_mapping" {
  type        = map(any)
  description = "Workload Identity Pool Provider attribute mapping, [More info](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider#attribute_mapping)"
  default = {
    "google.subject"       = "assertion.sub"
    "attribute.actor"      = "assertion.actor"
    "attribute.aud"        = "assertion.aud"
    "attribute.repository" = "assertion.repository"
  }
  sensitive = false
}

variable "allowed_audiences" {
  type        = list(string)
  description = "Workload Identity Pool Provider allowed audiences"
  default     = []
  sensitive   = false
}

variable "sa_mapping" {
  type = map(object({
    sa_name   = string
    attribute = string
  }))
  description = "Service Account resource names and corresponding WIF provider attributes. If attribute is set to `*` all identities in the pool are granted access to SAs"
  default     = {}
  sensitive   = false
}
