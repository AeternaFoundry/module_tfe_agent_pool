variable "agent_pools" {
  description = <<EOT
Map of agent_pools, attributes below
Required:
    - name
Optional:
    - organization
    - organization_scoped
EOT

  type = map(object({
    name                = string
    organization        = optional(string)
    organization_scoped = optional(bool)
  }))
}

