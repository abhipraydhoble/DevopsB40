# storing state file from local to s3 bucket

```hcl
terraform {
    backend "s3" {
        bucket = "devops-b45-remote-backend"
        key = "Backend/terraform.tfstate"
        region = "ap-southeast-1"
        profile = "tf-user"
    }
}
```

````
terraform init
````

## s3 to local 

```hcl
terraform {
 backend "local" {
  path = "terraform.tfstate"
```

````
terraform init -migrate-state
````
