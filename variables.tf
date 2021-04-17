#Provider Variables
variable "region" {
    type = string
    default = "sa-saopaulo-1"
}
#APIs Variables
variable "compartment_ocid" {
    type = string
    default = "ocid1.compartment.oc1..aaaaaaaaoktk7plmojxogbad7ws6g2ideob73ja5stbizet3mvqsj62bhsxq"
}
variable "vcn_ocid" {
    type = string
    default = ""
}
variable "subnet_ocid" {
    type = string
    default = "ocid1.subnet.oc1.sa-saopaulo-1.aaaaaaaa6mgix7z5dhe7chbubqndhtalmnt67vndcma3vjrv65o3pt422u7q"
}