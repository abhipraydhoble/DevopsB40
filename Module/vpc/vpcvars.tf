variable "vpc_cidr_block" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "subnet_cidr_block" {
  type = string
}

variable "subnet_az" {
  type = string
}

variable "public_ip" {
  type = bool
}

variable "subnet_name" {
  type = string
}

variable "igw_name" {
  type = string
}

variable "ports" {
  type = list(number)
}
