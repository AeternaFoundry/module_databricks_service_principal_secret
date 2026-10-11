resource "databricks_service_principal_secret" "service_principal_secrets" {
  for_each = var.service_principal_secrets

  service_principal_id = each.value.service_principal_id
  api                  = each.value.api
  create_time          = each.value.create_time
  expire_time          = each.value.expire_time
  lifetime             = each.value.lifetime
  secret               = each.value.secret
  secret_hash          = each.value.secret_hash
  status               = each.value.status
  time_rotating        = each.value.time_rotating
  update_time          = each.value.update_time

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

