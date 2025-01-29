## LIFECYCLE:
- To customize the lifecycle behavior of resource 
- type: block with specific settings

```hcl
resource "aws_instance" "example" {
  ami = "ami-123456"
  instance_type = "t2.micro"

  lifecycle {
    create_before_destroy = true
    prevent_destroy = true  # Prevents accidental deletion
    ignore_changes  = [tags]  # Ignores changes to tags
  }
}
