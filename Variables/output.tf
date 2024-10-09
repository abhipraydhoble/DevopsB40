output "instace_id" {
    value = aws_instance.vm.id
  
}

output "public_ip" {
    value = aws_instance.vm.public_ip
}
