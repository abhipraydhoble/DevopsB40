## DEPENDS_ON:
- To specify dependencies explicity between resources 
- type: list of resource addresses
- ensures that terraform creates on resource only after another has been created 
```hcl
resource "aws_instance" "example" {
  ami = "ami-123456"
  instance_type = "t2.micro"
  depends_on = [aws_security_group.example]
}
```
## with multiple dependiences:

```hcl
resource "aws_instance" "example" {
  ami           = "ami-123456"
  instance_type = "t2.micro"

  depends_on = [
    aws_security_group.example,
    aws_subnet.example_subnet,
    aws_internet_gateway.example_igw
  ]
}
```