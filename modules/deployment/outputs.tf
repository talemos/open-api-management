#Output result
output "deployment_ocid" {
  value = oci_apigateway_deployment.deployment.id
}

output "deployment_endpoint" {
  value = oci_apigateway_deployment.deployment.endpoint
}

output "deployment_lifecycle_details" {
  value = oci_apigateway_deployment.deployment.lifecycle_details
}

output "deployment_display_name" {
  value = oci_apigateway_deployment.deployment.display_name
}

output "deployment_backend_routes" {
  value = [for s in var.gateway_backend: s.url]
}