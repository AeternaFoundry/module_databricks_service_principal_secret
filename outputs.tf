output "service_principal_secrets_id" {
  description = "Map of id values across all service_principal_secrets, keyed the same as var.service_principal_secrets except keys with no id are omitted"
  value       = { for k, v in databricks_service_principal_secret.service_principal_secrets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_principal_secrets_api" {
  description = "Map of api values across all service_principal_secrets, keyed the same as var.service_principal_secrets except keys with no api are omitted"
  value       = { for k, v in databricks_service_principal_secret.service_principal_secrets : k => v.api if v.api != null && length(v.api) > 0 }
}
output "service_principal_secrets_create_time" {
  description = "Map of create_time values across all service_principal_secrets, keyed the same as var.service_principal_secrets except keys with no create_time are omitted"
  value       = { for k, v in databricks_service_principal_secret.service_principal_secrets : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "service_principal_secrets_expire_time" {
  description = "Map of expire_time values across all service_principal_secrets, keyed the same as var.service_principal_secrets except keys with no expire_time are omitted"
  value       = { for k, v in databricks_service_principal_secret.service_principal_secrets : k => v.expire_time if v.expire_time != null && length(v.expire_time) > 0 }
}
output "service_principal_secrets_lifetime" {
  description = "Map of lifetime values across all service_principal_secrets, keyed the same as var.service_principal_secrets except keys with no lifetime are omitted"
  value       = { for k, v in databricks_service_principal_secret.service_principal_secrets : k => v.lifetime if v.lifetime != null && length(v.lifetime) > 0 }
}
output "service_principal_secrets_provider_config" {
  description = "Map of provider_config values across all service_principal_secrets, keyed the same as var.service_principal_secrets except keys with no provider_config are omitted"
  value       = { for k, v in databricks_service_principal_secret.service_principal_secrets : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "service_principal_secrets_secret" {
  description = "Map of secret values across all service_principal_secrets, keyed the same as var.service_principal_secrets except keys with no secret are omitted"
  value       = { for k, v in databricks_service_principal_secret.service_principal_secrets : k => v.secret if v.secret != null && length(v.secret) > 0 }
  sensitive   = true
}
output "service_principal_secrets_secret_hash" {
  description = "Map of secret_hash values across all service_principal_secrets, keyed the same as var.service_principal_secrets except keys with no secret_hash are omitted"
  value       = { for k, v in databricks_service_principal_secret.service_principal_secrets : k => v.secret_hash if v.secret_hash != null && length(v.secret_hash) > 0 }
}
output "service_principal_secrets_service_principal_id" {
  description = "Map of service_principal_id values across all service_principal_secrets, keyed the same as var.service_principal_secrets except keys with no service_principal_id are omitted"
  value       = { for k, v in databricks_service_principal_secret.service_principal_secrets : k => v.service_principal_id if v.service_principal_id != null && length(v.service_principal_id) > 0 }
}
output "service_principal_secrets_status" {
  description = "Map of status values across all service_principal_secrets, keyed the same as var.service_principal_secrets except keys with no status are omitted"
  value       = { for k, v in databricks_service_principal_secret.service_principal_secrets : k => v.status if v.status != null && length(v.status) > 0 }
}
output "service_principal_secrets_time_rotating" {
  description = "Map of time_rotating values across all service_principal_secrets, keyed the same as var.service_principal_secrets except keys with no time_rotating are omitted"
  value       = { for k, v in databricks_service_principal_secret.service_principal_secrets : k => v.time_rotating if v.time_rotating != null && length(v.time_rotating) > 0 }
}
output "service_principal_secrets_update_time" {
  description = "Map of update_time values across all service_principal_secrets, keyed the same as var.service_principal_secrets except keys with no update_time are omitted"
  value       = { for k, v in databricks_service_principal_secret.service_principal_secrets : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

