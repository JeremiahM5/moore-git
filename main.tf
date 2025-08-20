# This is Jeremiah Moore and I am creating my own VPC


resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Moore_VPC"
  }
}

# These are the public subnets

resource "aws_subnet" "pub1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Public-subnet1"
  }
}

resource "aws_subnet" "pub2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "Public-subnet2"
  }
}

resource "aws_subnet" "priv1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "Private-subnet1"
  }
}

resource "aws_subnet" "priv2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.4.0/24"

  tags = {
    Name = "Private-subnet2"
  }
}

#This is the Internet Gateway

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "Moore-Gateway"
  }
}

