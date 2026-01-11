resource "azurerm_api_management_gateway" "api_management_gateways" {
  for_each = var.api_management_gateways

  api_management_id = each.value.api_management_id
  name              = each.value.name
  description       = each.value.description

  location_data {
    city     = each.value.location_data.city
    district = each.value.location_data.district
    name     = each.value.location_data.name
    region   = each.value.location_data.region
  }
}

