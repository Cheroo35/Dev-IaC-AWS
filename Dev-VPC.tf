resource "aws_vpc" "Development-vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    name = "Development-envn-vpc"
  }
  
}

resource "aws_subnet" "Development-subnet-1" {
  cidr_block = "10.0.1.0/24"
  vpc_id = aws_vpc.Development-vpc.id
  availability_zone = "us-east-1a"
  tags = {
    Name = "Development-envn-subnet-1"
  }
}

resource "aws_subnet" "Development-subnet-2" {
  vpc_id = aws_vpc.Development-vpc.id
  cidr_block = "10.0.2.0/24"
  tags = {
    Name = "Development-envn-subnet-2"
  }
}

resource "aws_subnet" "Development-envn-subnet-3" {
  vpc_id = aws_vpc.Development-vpc.id
  cidr_block = "10.0.4.0/24"
  tags = {
    Name = "Development-envn-subnet-3"
  }
}