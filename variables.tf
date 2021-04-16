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