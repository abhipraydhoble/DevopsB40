resource "aws_vpc" "network" {
    cidr_block = "192.168.0.0/16"
    tags = {
        Name = "VPC-40"
    }
}

resource "aws_subnet" "sub1" {
    vpc_id  = aws_vpc.network.id
    cidr_block = "192.168.0.0/22"
    availability_zone = "ap-south-1a"
    map_public_ip_on_launch = true
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
        from_port = 22
        to_port = 22
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "TCP"
    }

    ingress {
        from_port = 80
        to_port = 80
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "TCP"
    }
  
   egress {
        from_port = 0
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "-1"
   }
}


resource "aws_instance" "vm" {
    ami = "ami-078264b8ba71bc45e"
    instance_type = "t2.micro"
    key_name = "netflixe"
    subnet_id = aws_subnet.sub1.id
    vpc_security_group_ids = [aws_security_group.sg.id]
    tags = {
        Name = "Webserver"
    }
  
}
