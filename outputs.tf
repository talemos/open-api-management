#Outputs for Application Details page
#GATEWAY Outputs
output "oci_gateway_ocid" {
  value = module.create_oci_gateway.gateway_ocid
}

output "oci_gateway_hostname" {
  value = module.create_oci_gateway.gateway_hostname
}

output "oci_gateway_endpoint_type" {
  value = module.create_oci_gateway.gateway_endpoint_type
}

output "oci_gateway_display_name" {
  value = module.create_oci_gateway.gateway_display_name
}

#APIs Outputs
output "api_resource_ocid" {
  value = module.create_api_resource.api_ocid
}

output "api_resource_specification_type" {
  value = module.create_api_resource.api_specification_type
}

output "api_resource_lifecycle_status" {
  value = module.create_api_resource.api_lifecycle_status
}

#Deployments Outputs
output "oci_deployment_endpoint" {
  value = module.create_oci_deployment.deployment_endpoint
}

output "oci_deployment_lifecycle_details" {
  value = module.create_oci_deployment.deployment_lifecycle_details
}

output "oci_deployment_display_name" {
  value = module.create_oci_deployment.deployment_display_name
}

output "oci_deployment_backend_routes" {
  value = module.create_oci_deployment.deployment_backend_routes
}