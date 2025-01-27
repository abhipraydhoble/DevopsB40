data "aws_ami" "example" {
  most_recent      = true 
  owners           = ["137112412989"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.6.20250123.4-kernel-6.1-x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "vm" {
    ami = data.aws_ami.example.id
    instance_type = "t3.micro"
    count = 3                               # create no of instances
    key_name = "3tier"
    tags = {
       Name = "Server- ${count.index}"      # create 3 instancces with name server-0 server-1 server-2
    }
     user_data = <<-EOF
    #!/bin/bash
    sudo -i
    yum update -y
    yum install nginx -y
    systemctl start nginx 
    systemctl enable nginx 
    EOF

}

output "public_ips" {
  value = aws_instance.vm[*].public_ip  
}
