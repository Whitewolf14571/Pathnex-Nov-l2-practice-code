
# AWS Provder Configuration
provider "aws" {
    region = "ap-south-1"

} 

# EC2 Instance Configuration
 resource "aws_instance" "pathnex_ec2" {

   ami  = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
   instance_type = "t3.micro"

   root_block_device {
     volume_size = 8
     volume_type = "gp3"

   } 
     tags = {
    Name        = "Pathnex-EC2"
    Environment = "Dev"
    Project     = "Terraform-Lab"
    ManagedBy   = "Terraform"
  }
}

# Output EC2 Instance Details
output "instance_id" {
  value = aws_instance.pathnex_ec2.id
}

output "public_ip" {
  value = aws_instance.pathnex_ec2.public_ip
}

output "instance_type" {
  value = aws_instance.pathnex_ec2.instance_type
}

