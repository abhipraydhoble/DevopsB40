resource "aws_instance" "server" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name

    tags = {
        Name = var.instance_name
    }
}
