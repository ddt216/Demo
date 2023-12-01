terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.7.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

# An example resource that does nothing.
  resource "null_resource" "example" {
  triggers = {
  value = "A example resource that does nothing!"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld-instance"
  }
}
