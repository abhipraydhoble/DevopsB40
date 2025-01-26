### Data Block:
- Data block is used to fetch and use existing data from infrastructure resources that are not managed directly by Terraform. 
- It allows you to read data without creating or modifying resources.
- Data blocks are useful when you need to reference existing resources or use dynamic values in your Terraform configurations.

```hcl
data "aws_ami" "latest" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}
```
- Explaination:
1. data "aws_ami" "latest"
- data: This defines a data block, which retrieves information about an existing resource without creating or managing it.
- "aws_ami": Specifies the data source type. Here, it's the Amazon Web Services (AWS) AMI (Amazon Machine Image), which is a pre-configured virtual machine image.
- "latest": A user-defined name for this specific data block. It’s how you reference this block elsewhere in your Terraform configuration, like data.aws_ami.latest.
2. most_recent = true
- This tells Terraform to fetch the most recent AMI matching the specified filters.
- When there are multiple AMIs that match the criteria in the filter block, this ensures Terraform picks the newest one (based on creation date).
3. owners = ["amazon"]
- Specifies the AWS account ID or alias of the AMI owner. Here:
- "amazon": Refers to official Amazon AWS-owned AMIs.
- This ensures that only AMIs published by Amazon are considered (e.g., official Amazon Linux images).
4. filter Block
- The filter block allows you to narrow down the search criteria for the AMI by specifying attributes and their values.
- name = "name"
- Specifies the attribute of the AMI to filter on. In this case, it filters on the name of the AMI.
- values = ["amzn2-ami-hvm-*-x86_64-gp2"]
- values: Specifies the patterns or exact values for the name attribute.
- "amzn2-ami-hvm-*-x86_64-gp2":
- Matches Amazon Linux 2 AMIs.
- hvm: Indicates a hardware-virtualized machine type.
- x86_64: Refers to a 64-bit architecture.
- gp2: Refers to General Purpose SSD storage type.
- The * wildcard allows flexibility, so it matches any AMI name starting with amzn2-ami-hvm- and ending with x86_64-gp2.

  

