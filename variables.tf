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
}

