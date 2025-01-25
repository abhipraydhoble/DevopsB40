output "instance_id" {
  value = aws_instance.vm-1.id
}

output "public_ip" {
  value = aws_instance.vm-1.public_ip
}