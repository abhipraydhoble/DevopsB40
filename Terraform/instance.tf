resource "aws_security_group" "firewall" {
    name = "dj-saurabh-sg"
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
    ami = "ami-0c4e27b0c52857dd6"
    instance_type = "t2.micro"
    key_name = "3tier"
    vpc_security_group_ids = [aws_security_group.firewall.id]
    tags = {
        Name = "Dj Saurabh"
    }
    user_data = <<-EOF
    #!/bin/bash
    sudo -i
    yum update -y
    yum install httpd -y
    systemctl start httpd 
    systemctl enable httpd 
    echo "put your hands up for shantabai" > /var/www/html/index.html

    EOF
}

output "public_ip" {
    value = aws_instance.vm-1.public_ip
}
