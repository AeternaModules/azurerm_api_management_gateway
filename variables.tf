variable "api_management_gateways" {
  description = <<EOT
Map of api_management_gateways, attributes below
Required:
    - api_management_id
    - name
    - location_data (block):
        - city (optional)
        - district (optional)
        - name (required)
        - region (optional)
Optional:
    - description
EOT

  type = map(object({
    api_management_id = string
    name              = string
    description       = optional(string)
    location_data = object({
      city     = optional(string)
      district = optional(string)
      name     = string
      region   = optional(string)
    })
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_api_management_gateway's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.ApiManagementChildName] !matched
  # path: api_management_id
  #   source:    [from apimanagementservice.ValidateServiceID] !ok
  # path: api_management_id
  #   source:    [from apimanagementservice.ValidateServiceID] err != nil
}

