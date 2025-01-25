variable "ami_id" {
    type= string
  
}
variable "key" {
    type =string 
  
}
variable "instance_type" {
    type = string
  
}

##########vpc module
variable "vpc_cidr" {
    type= string
  
}
variable "subnet_cidr" {
    type= string
  
}
variable "map_public_ip" {
    type=bool
  
}
variable "availability_zone" {
    type = string
  
}
variable "route_cidr" {
    type = string
  
}
variable "ports" {
    type = number
  
}
variable "protocol" {
    type = string
  
}