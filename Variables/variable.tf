variable "vpc_cidr_block" {
    type = string 
}

variable "aws_subnet" {
  type = list(string)
  
}

variable "az" {
    type = list(string)  
  
}

variable "public_ip" {
    type = bool 
  
}

variable "port_numbers" {
    type = list(number)
    
}

variable "ami_id" {
    type = string
    
}

variable "instance_type" {
    type = string

}

variable "key" {
    type = string 
   
}

