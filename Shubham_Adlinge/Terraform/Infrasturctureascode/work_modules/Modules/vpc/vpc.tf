resource "aws_vpc" "vpc-1" {
    cidr_block = var.vpc_cidr
    tags = {
      Name= "my-vpc"
    }
  
}

resource "aws_subnet" "new-sub" {
    vpc_id = aws_vpc.vpc-1.id
    cidr_block = var.subnet_cidr
    map_public_ip_on_launch = var.map_public_ip
    availability_zone = var.availability_zone
    tags = {
      Name= "subnet"
    }
   
  
}

resource "aws_internet_gateway" "iwg" {
    vpc_id = aws_vpc.vpc-1.id
    tags = {
      Name= "igw"
    }
  
}

resource "aws_route_table" "RT" {
  vpc_id = aws_vpc.vpc-1.id
  
  route {
    cidr_block = var.route_cidr
    gateway_id = aws_internet_gateway.iwg.id
  }
  tags = {
    Name="route-tb"
  }
}

resource "aws_route_table_association" "RTA" {
  subnet_id = aws_subnet.new-sub.id
  route_table_id = aws_route_table.RT.id

}

resource "aws_security_group" "firewall" {
  name = "modules-sg"
  description = "connect to modules"
  vpc_id = aws_vpc.vpc-1.id

  ingress {
    from_port = var.ports
    to_port = var.ports
    protocol = var.protocol
    cidr_blocks = ["0.0.0.0/0"]
  }
    ingress {
    from_port = var.ports
    to_port = var.ports
    protocol = var.protocol
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = var.ports
    to_port = var.ports
    protocol = var.protocol
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = var.ports
    to_port = var.ports
    protocol = var.protocol
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port = var.ports
    to_port = var.ports
    protocol = var.protocol
    cidr_blocks = ["0.0.0.0/0"]

  }
  tags = {
    Name="sg1"
  }
}