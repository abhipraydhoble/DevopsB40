variable "instance_type" {
  default = "t2.micro"

}

variable ami {
  default = "ami-08f52b2e87cebadd9"
}

variable "key_name" {
  default = "eks-key"
