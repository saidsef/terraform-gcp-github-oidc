locals {
  service_account_roles = concat(var.attach_default_roles, var.attach_extra_roles)
}