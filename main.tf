#Configure the Oracle Cloud Infrastructure provider
provider "oci" {
  region = var.region
}

module "create_pets_api_swagger" {
  source = "./modules/api"
  
  api_compartment_ocid = var.compartment_ocid
  api_content = file("./micronautswagger.yaml")
  api_display_name = "Pets Store Swagger"
}

module "create_pets_oci_gateway" {
  source = "./modules/gateway"

  gateway_compartment_ocid = var.compartment_ocid
  gateway_subnet_ocid = var.subnet_ocid
  gateway_display_name = "Pet Store Gateway"
  gateway_endpoint_type = "PUBLIC"
}

module "create_pets_deployment" {
  source = "./modules/deployment"

  gateway_ocid = module.create_pets_oci_gateway.gateway_ocid
  gateway_compartment_ocid = var.compartment_ocid
  gateway_path_prefix = "/"
  gateway_backend = [{path = "/pets", type = "HTTP_BACKEND", url = "http://132.226.246.150:8080/pets"}]
  gateway_deployment_display_name = "Pets Store Deployment"
}
