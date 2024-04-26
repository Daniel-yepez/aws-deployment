resource "aws_vpc" "aws-deployment-vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    name = "demo-vpc"
  }
}

resource "aws_subnet" "aws-deployment-subnet" {
  vpc_id     = aws_vpc.aws-deployment-vpc.id
  cidr_block = "172.16.20.0/24"

  tags = {
    name = "demo-subnet"
  }
}

resource "aws_instance" "aws-deployment-ec2" {
  ami             = "ami-0be2609ba883822ec"
  instance_type   = "t2.micro"
  security_groups = ["default"]
  subnet_id       = "subnet-0d6a1e5902d68ce9e"

  tags = {
    Name = "demo-ec2"
  }
}
#
