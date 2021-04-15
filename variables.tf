#Provider Variables
variable "region" {
  type = string
  description = "the region to run this stack"
  default = "sa-saopaulo-1"
}

#APIs Variables
variable "compartment_ocid" {
  type = string
  description = "the OCID of the compartment to create the resources"
  default = "ocid1.compartment.oc1..aaaaaaaaoktk7plmojxogbad7ws6g2ideob73ja5stbizet3mvqsj62bhsxq"
}

variable "subnet_ocid" {
  type = string
  description = "the OCID of the subnet to create the API Gateway for the deployment of the API"
  default = "ocid1.subnet.oc1.sa-saopaulo-1.aaaaaaaa6mgix7z5dhe7chbubqndhtalmnt67vndcma3vjrv65o3pt422u7q"
}

variable "gateway_routes_backend" {
    type = list(object({path = string, type = string, url = string}))
    description = "the object to define the backend routes for the API Gateway"
    default = [
      {path = "/pets", type = "HTTP_BACKEND", url = "http://132.226.246.150:8080/pets"}, 
      {path = "/owners", type = "HTTP_BACKEND", url = "http://132.226.246.150:8080/owners"}
    ]
}

variable "deployment_display_name" {
  type = string
  description = "name of the deployment for the API Gateway"
  default = "Pets Store Deployment"
}