resource "aws_vpc" "network" {
    cidr_block = var.vpc_cidr_block
    tags = {
        Name = "VPC-40"
    }
}

resource "aws_subnet" "sub1" {
    vpc_id  = aws_vpc.network.id
    cidr_block = var.aws_subnet[0]
    availability_zone = var.az[1]
    map_public_ip_on_launch = var.public_ip

    tags = {
        Name = "Public-Subnet"
    }
}



resource "aws_internet_gateway" "int" {
    vpc_id = aws_vpc.network.id 
    tags = {
        Name = "igw-vpc-40"
    }
  
}



resource "aws_route_table" "Public" {
    vpc_id = aws_vpc.network.id
    tags = {
        Name = "Public-RT-40"
    }

        route {
            gateway_id = aws_internet_gateway.int.id
            cidr_block = "0.0.0.0/0"
    }
  
}

resource "aws_route_table_association" "demo" {
    subnet_id = aws_subnet.sub1.id
    route_table_id = aws_route_table.Public.id
}

resource "aws_security_group" "sg" {

    vpc_id = aws_vpc.network.id
    tags = {

        Name = "sg-40"
    }

    ingress {
        from_port = var.port_numbers[0]
        to_port = var.port_numbers[0]
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "TCP"
    }

    ingress {
        from_port = var.port_numbers[1]
        to_port = var.port_numbers[1]
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "TCP"
    }
  
   egress {
        from_port = var.port_numbers[2]
        to_port = var.port_numbers[2]
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "-1"
   }
}


resource "aws_instance" "vm" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key
    subnet_id = aws_subnet.sub1.id
    vpc_security_group_ids = [aws_security_group.sg.id]
    tags = {
        Name = "Webserver"
    }
  
}



