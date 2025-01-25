## Basic commands:
1. Initializes a working directory containing Terraform configuration files.
```bash
terraform init
```
- flags:
- Forces reconfiguration of the backend, even if it's already configured
```bash
terraform init -reconfigure
```
- This flag helps in migrating the backend configuration when changing backends
```bash
terraform init --migrate
```

2. Validates the configuration files for syntax or internal consistency.
```bash
terraform validate
```
3. Creates an execution plan, showing what actions Terraform will take to reach the desired state.
```bash
terraform plan
```
4. Applies the changes required to reach the desired state of the configuration.
```bash
terraform apply
```
5. Destroys the Terraform-managed infrastructure
```bash
terraform destroy
```
6. to destroy the specific resource:
```bash
Terraform destroy –target= resource_name
```
7. To automatically approve then use
```bash 
terraform apply -auto-approve
```
```bash 
terraform destroy -auto-approve
```
8. Displays the current Terraform version.
```bash
terraform version
```
9. Imports existing infrastructure into Terraform management.
```bash
terraform import aws_instance.example i-1234567890abcdef0
```
10. Retrieves the outputs defined in the Terraform configuration
```bash
terraform output
```
11. To set the alias:
```bash
aliastf = terraform
``` 