terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = "t3.micro"  # hard-coded to avoid any override issues

  tags = {
    Name = var.instance_name
  }
}
