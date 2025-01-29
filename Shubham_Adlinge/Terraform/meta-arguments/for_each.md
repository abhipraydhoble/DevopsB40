## FOR_EACH:
- To create mutiple instance based on maps or set(list) of string
- datatype: map or set(list)
- more flexible than count meta arguments
1. for_each(list):

```hcl
resource "aws_instance" "example" {
  for_each = toset(["Dev", "QA", "Prod"])  # Create instances for Dev, QA, and Prod

  ami           = "ami-0c4e27b0c52857dd6"
  instance_type = "t2.micro"

  tags = {
    Name = "Instance-${each.key}"  # Instance-Dev, Instance-QA, Instance-Prod
  }
}

output "public_ips" {
  value = { for key, instance in aws_instance.example : key => instance.public_ip }
}
```
2. for_each(maps):

```hcl 
variable "instances" {
  default = {
    Dev  = "t2.micro"
    QA   = "t2.small"
    Prod = "t2.medium"
  }
}

resource "aws_instance" "example" {
  for_each = var.instances  # Create one instance for each key in the map

  ami           = "ami-0c4e27b0c52857dd6"
  instance_type = each.value  # Instance types from the map

  tags = {
    Name = "Instance-${each.key}"  # Instance-Dev, Instance-QA, Instance-Prod
  }
}

output "public_ips" {
  value = { for key, instance in aws_instance.example : key => instance.public_ip }
}
```

