
provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}


locals {
    staging_env = "staging"
}

resource "aws_instance" "local-tf" {
  ami           = "ami-00c39f71452c08778"
  instance_type = "t2.micro"
  tags = {
    Name = "${local.staging_env}.terraform-EC2"
  }
}

resource "aws_default_vpc" "my-vpc" {
  tags = {
    Name = "${local.staging_env}-vpc-tag"
  }
}