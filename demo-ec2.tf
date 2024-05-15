resource "aws_vpc" "demo-vpc" {
  cidr_block = "172.18.0.0/16"

  tags = {
    Name = "new-vpc"
  }
}

resource "aws_subnet" "demo-subnet" {
  vpc_id     = aws_vpc.demo-vpc.id
  cidr_block = "172.18.20.0/24"

  tags = {
    Name = "new-subnet"
  }
}

resource "aws_instance" "demo-ec2" {
  ami             = "ami-0be2609ba883822ec"
  subnet_id       = aws_subnet.demo-subnet.id
  instance_type   = "t2.micro"

  tags = {
    Name = "new-ec2"
  }
}