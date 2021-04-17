#Output result
output "api_ocid" {
  value = oci_apigateway_api.api.id
}

output "api_specification_type" {
  value = oci_apigateway_api.api.specification_type
}

output "api_lifecycle_status" {
  value = oci_apigateway_api.api.lifecycle_details
}