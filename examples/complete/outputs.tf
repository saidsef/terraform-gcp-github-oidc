output "pool_name" {
  description = "Pool name"
  value       = module.github_oidc.pool_name
  sensitive   = false
}
