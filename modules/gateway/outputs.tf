#Gateway Output
output "gateway_ocid" {
  value = oci_apigateway_gateway.gateway.id
}

output "gateway_hostname" {
  value = oci_apigateway_gateway.gateway.hostname
}

output "gateway_endpoint_type" {
  value = oci_apigateway_gateway.gateway.endpoint_type
}

output "gateway_display_name" {
  value = oci_apigateway_gateway.gateway.display_name
}