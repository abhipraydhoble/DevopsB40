variable "vpc_cidr_block" {
    type = string 
    default = "192.168.0.0/16"
}

variable "aws_subnet" {
  type = list(string)
  default = [ "192.168.0.0/22", "192.168.4.0/22", "192.168.8.0/22" ]
}

variable "az" {
    type = list(string)
    default = [ "ap-south-1a", "ap-south-1b", "ap-south-1c"]
  
}

variable "public_ip" {
    type = bool 
    default = true
  
}

variable "port_numbers" {
    type = list(number)
    default = [ 22 ,80, 0 ]
}

variable "ami_id" {
    type = string
    default = "ami-078264b8ba71bc45e"  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "key" {
    type = string 
    default = "netflixe" 
}

