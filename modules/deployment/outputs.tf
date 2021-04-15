#Output result
output "deployment_ocid" {
  value = oci_apigateway_deployment.deployment.id
}