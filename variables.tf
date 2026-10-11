variable "service_principal_secrets" {
  description = <<EOT
Map of service_principal_secrets, attributes below
Required:
    - service_principal_id
Optional:
    - api
    - create_time
    - expire_time
    - lifetime
    - secret
    - secret_hash
    - status
    - time_rotating
    - update_time
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    service_principal_id = string
    api                  = optional(string)
    create_time          = optional(string)
    expire_time          = optional(string)
    lifetime             = optional(string)
    secret               = optional(string)
    secret_hash          = optional(string)
    status               = optional(string)
    time_rotating        = optional(string)
    update_time          = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

