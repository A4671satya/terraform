

This project demonstrates how to create, view, and destroy an AWS EC2 instance using Terraform.
It includes:

main.tf – Main Terraform configuration

variables.tf – Input variables

outputs.tf – Output values

Steps to generate AWS access keys

Steps to deploy and destroy EC2

 1. Prerequisites

Before starting, install:

 Terraform
sudo apt-get update
sudo apt-get install terraform

 AWS CLI
sudo apt install awscli

 Configure AWS Credentials

Run:

aws configure


Enter:

AWS Access Key

AWS Secret Key

Region: us-east-1

Output: json

 2. Project Structure
terraform/
│── main.tf
│── variables.tf
│── outputs.tf
│── terraform.tfvars   (optional)

 3. Terraform Files
main.tf

Defines the AWS provider and EC2 instance:

provider "aws" {
  region = var.region
}

resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

variables.tf

Declares input variables:

variable "region" {
  default = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_name" {
  description = "EC2 instance Name tag"
}

outputs.tf

Displays key details after deployment:

output "instance_id" {
  value = aws_instance.this.id
}

output "public_ip" {
  value = aws_instance.this.public_ip
}

output "availability_zone" {
  value = aws_instance.this.availability_zone
}

 4. How to Deploy
Step 1 — Initialize Terraform
terraform init

Step 2 — Validate the configuration
terraform validate

Step 3 — Preview the changes
terraform plan

Step 4 — Apply (Create EC2 instance)
terraform apply
<img width="1920" height="1080" alt="Screenshot (100)" src="https://github.com/user-attachments/assets/e54e445c-6c20-4182-b9aa-c0fd3c005612" />
<img width="1920" height="1080" alt="Screenshot (101)" src="https://github.com/user-attachments/assets/8f2d6e7c-3043-4e1d-9221-590aeb550e84" />
<img width="1920" height="1080" alt="Screenshot (99)" src="https://github.com/user-attachments/assets/07a52782-1ea7-48d1-8994-d6b410cdd129" />
<img width="1920" height="1080" alt="Screenshot (102)" src="https://github.com/user-attachments/assets/7a2872a4-ec70-4c22-9588-ce50d15b946a" />
