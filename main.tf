resource "tfe_agent_pool" "agent_pools" {
  for_each = var.agent_pools

  name                = each.value.name
  organization        = each.value.organization
  organization_scoped = each.value.organization_scoped
}

