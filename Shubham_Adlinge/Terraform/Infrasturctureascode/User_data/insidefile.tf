###User data is commonly used to configure the instance at launch, such as installing software, running scripts, or initializing services.
resource "aws_instance" "example" {
  ami           = "ami-12345678"     # Replace with your AMI ID
  instance_type = "t2.micro"

  # User Data Script
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World!" > /var/www/html/index.html
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              EOF

  tags = {
    Name = "example-instance"
  }
}
