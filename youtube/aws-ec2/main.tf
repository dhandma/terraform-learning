terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta1"
    }
  }
}

# provide detail:

provider "aws" {
  region = "us-east-1"
}

# ec2 instance resource
resource "aws_instance" "myserver" {
  ami           = "ami-0953476d60561c955"
  instance_type = "t2.micro"
  tags = {
    "Name" = "mydemoserver"
  }
}
resource "random_id" "rand_id" {

  byte_length = 8
}