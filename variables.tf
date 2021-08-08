#Provider Variables
variable "region" {
    type = string
    default = "us-ashburn-1"
}
#APIs Variables
variable "compartment_ocid" {
    type = string
    default = "ocid1.compartment.oc1..aaaaaaaa2qvltr6q42ii2bnhi6lvnby4ixwzyyaem4xkuuimvbglyvw2ztpq"
}
variable "vcn_ocid" {
    type = string
    default = ""
}
variable "subnet_ocid" {
    type = string
    default = "ocid1.subnet.oc1.iad.aaaaaaaasil2tucqkm77rmalqua3npemkxzkwtso6m75ih72kgoxoekkfura"
}