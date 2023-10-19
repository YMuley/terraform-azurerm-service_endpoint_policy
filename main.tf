resource "azurerm_subnet_service_endpoint_storage_policy" "service_endpoints" {
  for_each            = local.policy_name
  name                = each.value.name
  resource_group_name = var.resource_group_output[each.value.resource_group_name].name
  location            = each.value.location

  dynamic "definition" {
    for_each          = each.value.definition
    content {
    name              = definition.value.name
    description       = definition.value.description
    service           = definition.value.service
    service_resources = definition.value.service_resources
    } 
  }
}