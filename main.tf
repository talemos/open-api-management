#Configure the Oracle Cloud Infrastructure provider
provider "oci" {
  region = var.region
}

module "create_api_resource" {
  source = "./modules/api"
  
  api_compartment_ocid = var.compartment_ocid
  api_content = file("./micronautswagger.yaml")
  api_display_name = "Pets Store Swagger"
}

module "create_oci_gateway" {
  source = "./modules/gateway"

  gateway_compartment_ocid = var.compartment_ocid
  gateway_subnet_ocid = var.subnet_ocid
  gateway_display_name = "Pet Store Gateway"
  gateway_endpoint_type = "PUBLIC"
}

module "create_oci_deployment" {
  source = "./modules/deployment"

  gateway_ocid = module.create_oci_gateway.gateway_ocid
  gateway_compartment_ocid = var.compartment_ocid
  gateway_path_prefix = "/"
  gateway_backend = [{path = "/pets", type = "HTTP_BACKEND", methods = ["GET"], url = "http://132.226.246.150:8080/pets"}, 
      {path = "/owners", type = "HTTP_BACKEND", methods = ["GET"], url = "http://132.226.246.150:8080/owners"}]
  gateway_deployment_display_name = "Pets Store Deployment"
}
