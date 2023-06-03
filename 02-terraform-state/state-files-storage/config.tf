#Run this after creating the resources (S3 Bucket and DynamoDB Table)


#terraform {
#  backend "s3" {
#    bucket = "terraform-states-soham"
#    key = "terraform.tfstate"
#    region = "us-east-2"
#
#    dynamodb_table = "terraform-states-soham"
#    encrypt = true
#  }
#}