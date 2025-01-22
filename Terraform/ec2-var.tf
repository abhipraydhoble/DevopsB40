# Variables

variable "ami_id" {
    description = "this variable contains ami id"
    type = string
    default = "ami-0bd55ebedabddc3c0"
}
variable "instance_type" {
    description = "this variable contains instance type"
    type = string
    default = "t2.micro"
}

variable "key" {
    description = "this variable contains key info"
    type = string
    default = "3tier"
}



resource "aws_instance" "server-1" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key

    tags = {
        Name = "Server-Test"
    }
}

