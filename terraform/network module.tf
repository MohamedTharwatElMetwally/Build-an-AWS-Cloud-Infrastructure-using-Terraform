
module "network-module" {
    source = "/home/mohamed/network-module"  
    vpc_cidr = var.vpc_cidr
    vpc_name = var.vpc_name
    region = var.region
    subnets_details = var.subnets_details
}