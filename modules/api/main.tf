# Create API configuration
resource "oci_apigateway_api" "api" {
  #Required
  compartment_id = var.api_compartment_ocid
  #Optional
  content      = var.api_content
  display_name = var.api_display_name
}