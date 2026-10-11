variable "iot_endpoint_lookup" {
  description = <<EOT
Map of iot_endpoint_lookup, attributes below
Optional:
    - endpoint_type
    - region
EOT

  type = map(object({
    endpoint_type = optional(string)
    region        = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

