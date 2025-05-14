# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "ap-south-1"
}

# Resource Block
resource "aws_instance" "Iac-sab-demo1" {
  ami           = "ami-0af9569868786b23a" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
}
