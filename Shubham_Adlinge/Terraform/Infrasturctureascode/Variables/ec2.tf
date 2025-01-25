resource "aws_instance" "vm-1" {
    ami =var.ami_id
    instance_type = var.instance_type
    key_name = var.key
    tags = {
      Name= "server"
    }
  
}