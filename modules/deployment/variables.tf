#Deployment core variables
variable "gateway_ocid" {}
variable "gateway_compartment_ocid" {}
variable "gateway_path_prefix" {}
variable "gateway_deployment_display_name" {}
variable "gateway_backend" {
    type = list(object({path = string, type = string, url = string}))
    default = []
}