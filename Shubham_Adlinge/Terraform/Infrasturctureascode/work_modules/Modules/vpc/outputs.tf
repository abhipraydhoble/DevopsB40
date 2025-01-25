output "vpc_id" {
  value = aws_vpc.vpc-1.id
}

output "public_subnet_ids" {
  value = aws_subnet.new-sub.id
}

output "igw_id" {
  value = aws_internet_gateway.iwg.id
}
