module "ec2" {
    source = "./Modules/ec2"
    ami_id = var.ami_id
    key = var.key
    instance_type = var.instance_type
    subnet_id = module.vpc.public_subnet_ids #### if it contain list then syntax will be element[module.vpc.public_subnet_ids, [0]]
  
}

module "vpc" {
    source = "./Modules/vpc"
    vpc_cidr = var.vpc_cidr
    subnet_cidr =  var.subnet_cidr
    map_public_ip = var.map_public_ip
    availability_zone = var.availability_zone
    route_cidr = var.route_cidr
    ports = var.ports
    protocol = var.protocol
    
  
}
