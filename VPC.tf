resource "aws_vpc" "vnet" {
    cidr_block = "192.168.0.0/16"

    tags = {
        Name = "VPC-Demo"
    }
}

resource "aws_subnet" "public" {
    vpc_id = aws_vpc.vnet.id
    cidr_block = "192.168.1.0/24"
    availability_zone = "ap-south-1a"
    map_public_ip_on_launch = "true"

    tags ={
        Name = "Public-Subnet"
    }
}

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vnet.id

    tags = {
      Name = "Internet-gw"
    }
}

resource "aws_route_table" "rt" {
    vpc_id = aws_vpc.vnet.id
    tags = {
        Name = "RT-Public"
    }

    route {
       gateway_id = aws_internet_gateway.igw.id
       cidr_block = "0.0.0.0/0"
    }
}

resource "aws_route_table_association" "attach" {
    route_table_id = aws_route_table.rt.id
    subnet_id = aws_subnet.public.id
}

