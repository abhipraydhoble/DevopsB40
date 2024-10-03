resource "aws_instance" "vm" {
 ami = "ami-08718895af4dfa033"
 instance_type = "t2.micro"
 key_name = "netflixe"
 tags = {
  Name = "Server-01"
   }
}
