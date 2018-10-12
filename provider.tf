provider "aws" {
  region = "us-west-2"
  profile = "terraform"
}

terraform {
  backend "s3" {
    bucket = "roseatech-terraform-state"
    key = "infrastructure/terraform.state"
    region = "us-west-2"
    dynamodb_table = "roseatech-terraform-locking"
    profile = "terraform"
  }
}