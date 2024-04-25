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

resource "aws_network_interface" "aws-deployment-ni" {
  subnet_id   = aws_vpc.aws-deployment-subnet.id
  private_ips = ["172.16.10.100"]

  tags = {
    name = "demo-ni"
  }
}

resource "aws_security_group" "aws-deployment-sg" {
  name   = "demo-sg"
  vpc_id = aws_vpc.aws-deployment-vpc.id
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "aws-deployment-ec2" {
  ami           = "ami-0be2609ba883822ec"
  instance_type = "t2.micro"

  network_interface = {
    network_interface_id = aws_network_interface.aws-deployment-ni.id
    device_index         = 0
  }
}
#
