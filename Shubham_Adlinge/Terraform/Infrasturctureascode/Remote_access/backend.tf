terraform {
  backend "s3" {
    bucket = "my-bucket2306"
    region         = "ap-northeast-2"
    key            = "terraform.tfstate"
    dynamodb_table = "new-table1020" # add the name of table create through GUI or IaC
    profile = "shubham"
  }
}

######### to create the new DynamoDb table in terraform use following code
resource "aws_dynamodb_table" "terraform_locks" {
  name         = "new-table1020"
  billing_mode = "PAY_PER_REQUEST" # On-demand pricing
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Environment = "Production"
    Team        = "DevOps"
  }
}
