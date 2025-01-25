### importing the .sh file from other location

resource "aws_instance" "private-server-2" {
    ami = "ami-id"
    instance_type = "t2.micro"
    key_name = "key"
    subnet_id = aws_subnet.private-subnet.id
    vpc_security_group_ids = [aws_security_group.sg3.id]
    user_data = file("${path.module}/tomcat.sh")
    tags = {
       Name = "tomcat-server"
    }
  
}