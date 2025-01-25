variable "ami_id" {
    type= string
  
}
variable "key" {
    type =string 
  
}
variable "instance_type" {
    type = string
  
}
variable "subnet_id" {
  type        = string
  description = "Subnet ID where the instance will be launched"
}
