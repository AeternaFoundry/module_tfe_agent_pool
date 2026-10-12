output "agent_pools_id" {
  description = "Map of id values across all agent_pools, keyed the same as var.agent_pools except keys with no id are omitted"
  value       = { for k, v in tfe_agent_pool.agent_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "agent_pools_name" {
  description = "Map of name values across all agent_pools, keyed the same as var.agent_pools except keys with no name are omitted"
  value       = { for k, v in tfe_agent_pool.agent_pools : k => v.name if v.name != null && length(v.name) > 0 }
}
output "agent_pools_organization" {
  description = "Map of organization values across all agent_pools, keyed the same as var.agent_pools except keys with no organization are omitted"
  value       = { for k, v in tfe_agent_pool.agent_pools : k => v.organization if v.organization != null && length(v.organization) > 0 }
}
output "agent_pools_organization_scoped" {
  description = "Map of organization_scoped values across all agent_pools, keyed the same as var.agent_pools except keys with no organization_scoped are omitted"
  value       = { for k, v in tfe_agent_pool.agent_pools : k => v.organization_scoped if v.organization_scoped != null }
}

