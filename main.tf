data "aws_iot_endpoint" "iot_endpoint_lookup" {
  for_each = var.iot_endpoint_lookup

  endpoint_type = each.value.endpoint_type
  region        = each.value.region
}

