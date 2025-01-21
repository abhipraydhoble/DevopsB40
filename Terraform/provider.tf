provider "aws" {
    region = "ap-southeast-1"
    access_key = "AKIA23WHUEH4HOS5Gsdfghj"
    secret_key = "STShGfXudQ06GyFmeBd1h3biTXimpUIU"
}


# steps to define provider block with cli profile
# install aws cli
# aws configure  --profile tf-user
# enter access_key: 
# enter secret_key:
# enter region:


provider "aws"  {
   region = "ap-southeast-1"
   profile = "tf-user"
}
