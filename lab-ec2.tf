#resource "aws_vpc" "aws-deployment-vpc-lab" {
#  cidr_block = "172.17.0.0/16"
#
#  tags = {
#    Name = "demo-vpc-lab"
#  }
#}
#
#resource "aws_subnet" "aws-deployment-subnet-lab" {
#  vpc_id     = aws_vpc.aws-deployment-vpc-lab.id
#  cidr_block = "172.17.20.0/24"
#
#  tags = {
#    Name = "demo-subnet-lab"
#  }
#}
#
#resource "aws_instance" "aws-deployment-ec2-lab" {
#  ami             = "ami-0be2609ba883822ec"
#  subnet_id       = aws_subnet.aws-deployment-subnet-lab.id
#  instance_type   = "t2.micro"
#
#  tags = {
#    Name = "lab-new-ec2"
#  }
#}
