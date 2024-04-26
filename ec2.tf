resource "aws_instance" "aws-deployment-ec2" {
  ami             = "ami-0be2609ba883822ec"
  instance_type   = "t2.micro"
  security_groups = ["default"]

  tags = {
    Name = "demo-ec2"
  }
}