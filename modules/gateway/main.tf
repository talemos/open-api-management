resource "oci_apigateway_gateway" "gateway" {
  #Required
  compartment_id = var.gateway_compartment_ocid
  endpoint_type  = var.gateway_endpoint_type
  subnet_id      = var.gateway_subnet_ocid

  #Optional
  display_name = var.gateway_display_name
}