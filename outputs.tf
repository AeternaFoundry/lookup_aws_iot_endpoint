output "iot_endpoint_lookup_id" {
  description = "Map of id values across all iot_endpoint_lookup, keyed the same as var.iot_endpoint_lookup"
  value       = { for k, v in data.aws_iot_endpoint.iot_endpoint_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_endpoint_lookup_endpoint_address" {
  description = "Map of endpoint_address values across all iot_endpoint_lookup, keyed the same as var.iot_endpoint_lookup"
  value       = { for k, v in data.aws_iot_endpoint.iot_endpoint_lookup : k => v.endpoint_address if v.endpoint_address != null && length(v.endpoint_address) > 0 }
}
output "iot_endpoint_lookup_endpoint_type" {
  description = "Map of endpoint_type values across all iot_endpoint_lookup, keyed the same as var.iot_endpoint_lookup"
  value       = { for k, v in data.aws_iot_endpoint.iot_endpoint_lookup : k => v.endpoint_type if v.endpoint_type != null && length(v.endpoint_type) > 0 }
}
output "iot_endpoint_lookup_region" {
  description = "Map of region values across all iot_endpoint_lookup, keyed the same as var.iot_endpoint_lookup"
  value       = { for k, v in data.aws_iot_endpoint.iot_endpoint_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

