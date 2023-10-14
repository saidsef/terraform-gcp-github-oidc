variable "project_id" {
  type        = string
  description = "Project id to create Workload ID Pool"
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
