variable "project_name" {
    default = "expense"
}
variable "environment" {
    default = "dev"
}
variable "ingress_alb_tags" {
    default = {
        component = "ingress_alb"
    }
}
variable "common_tags" {
    default = {
        Terraform = true
    }
}
variable "zone_name" {
    default = "meerjan.online"
}