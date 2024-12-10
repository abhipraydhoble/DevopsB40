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

    tags = {
        Name = "Public-Subnet"
    }
}

resource "aws_subnet" "sub2" {
    vpc_id = aws_vpc.network.id
    cidr_block = "192.168.4.0/22"
    availability_zone = "ap-south-1b"
    map_public_ip_on_launch = false

      tags = {
        Name = "Private-Subnet"
    }
  
}


resource "aws_internet_gateway" "int" {
    vpc_id = aws_vpc.network.id 
    tags = {
        Name = "igw-vpc-40"
    }
  
}


resource "aws_eip" "static" {
    domain = "vpc"
}

resource "aws_nat_gateway" "nat" {
    subnet_id = aws_subnet.sub1.id
    allocation_id = aws_eip.static.id
  
}

resource "aws_route_table" "Private" {
    vpc_id = aws_vpc.network.id
    tags = {
        Name = "Private-RT-40"
    }
        route {
          cidr_block = "0.0.0.0/0"
          nat_gateway_id = aws_nat_gateway.nat.id
        }
    }
  
  resource "aws_route_table_association" "demo1" {
    subnet_id = aws_subnet.sub2.id
    route_table_id = aws_route_table.Private.id
    
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

resource "aws_instance" "vm-1" {
    ami = "ami-078264b8ba71bc45e"
     instance_type = "t2.micro"
    key_name = "netflixe"
    subnet_id = aws_subnet.sub2.id
    vpc_security_group_ids = [aws_security_group.sg.id]
    tags = {
        Name = "Private-Instance"
    }
  
}
