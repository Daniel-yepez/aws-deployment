#resource "aws_vpc" "new-vpc" {
#  cidr_block = "172.18.0.0/16"
#
#  tags = {
#    Name = "new-vpc"
#  }
#}
#
#resource "aws_subnet" "new-subnet" {
#  vpc_id     = aws_vpc.new-vpc.id
#  cidr_block = "172.18.20.0/24"
#
#  tags = {
#    Name = "new-subnet"
#  }
#}
#
#resource "aws_instance" "new-ec2" {
#  ami             = "ami-0be2609ba883822ec"
#  subnet_id       = aws_subnet.new-subnet.id
#  instance_type   = "t2.micro"
#
#  tags = {
#    Name = "new-ec2-instance"
#  }
#}