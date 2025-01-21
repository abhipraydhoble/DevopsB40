resource "aws_security_group" "firewall" {
    name = "devops-b45-sg"
    vpc_id = "vpc-0162d6c10ea8e9c4f"
    tags = {
       Environment = "Dev"
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "vm-1" {
    ami = "ami-0bd55ebedabddc3c0"
    instance_type = "t2.micro"
    key_name = "3tier"
    tags = {
        Name = "TF-Server"
    }

    user_data = <<EOF
    #!/bin/bash
    sudo -i
    yum update -y
    yum install httpd -y
    systemctl start httpd 
    systemctl enable httpd 
    echo "Helllo Terraform" > /var/www/html/index.html

    EOF
  
}
