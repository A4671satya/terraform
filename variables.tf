variable "region" {
  default = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for EC2"
  default     = "ami-0c02fb55956c7d316"   # Ubuntu 22.04 (free tier)
}

variable "instance_type" {
  description = "EC2 Instance type"
  default     = "t3.micro"     # MUST BE FREE-TIER ELIGIBLE
}

variable "instance_name" {
  description = "Name tag"
  default     = "MyTerraformInstance"
}

