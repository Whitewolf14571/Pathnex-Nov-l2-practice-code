resource "aws_instance" "day05_ec2" {
  ami           = "ami-01e91e94accc42eec"
  instance_type = var.instance_type


  tags = {
    Name        = var.instance_name
    Environment = "Practice"
    Day         = "05"
  }
}