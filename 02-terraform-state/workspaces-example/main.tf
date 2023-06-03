provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami = "ami-0fb653ca2d3203ac1"
  instance_type = terraform.workspace == "default" ? "t2.medium" : "t2.micro"
}

terraform {
  backend "s3" {
    bucket = "terraform-states-soham"
    key = "workspaces-example/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "terraform-states-soham"
    encrypt = true
  }
}