#Gateway Output
output "gateway_ocid" {
  value = oci_apigateway_gateway.gateway.id
}