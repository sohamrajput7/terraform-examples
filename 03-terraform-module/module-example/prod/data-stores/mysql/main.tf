terraform {
  backend "s3" {
    bucket = "terraform-states-soham"
    key = "prod/data-stores/mysql/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "terraform-states-soham"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_db_instance" "example" {
  instance_class = "db.t2.micro"
  identifier_prefix = "terraform"
  db_name = var.db_name
  engine = "mysql"
  allocated_storage = 10
  skip_final_snapshot = true

  username = var.db_username
  password = var.db_password
}