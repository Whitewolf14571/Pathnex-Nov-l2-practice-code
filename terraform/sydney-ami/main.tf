provider "aws" {
  region = "ap-southeast-2"
}
# Create EC2 Instance

resource "aws_instance" "pathnex_ec2" {
  ami           = "ami-062900c135ab91582"
  instance_type = "t3.micro"

  # EC2 Resource Tags
  tags = {
    Name        = "Pankaj-Terraform-day02"
    Environment = "Dev"
    Project     = "Pathnex"
    ManagedBy   = "Terraform"
  }
}
