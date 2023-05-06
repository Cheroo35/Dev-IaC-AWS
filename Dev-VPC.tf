resource "aws_vpc" "Development-vpc" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_hostnames = true
  tags = {
    name = "Development-envn-vpc"
  }
  
}

resource "aws_subnet" "Development-subnet-1" {
  cidr_block = "${var.public_subnet_1_cidr}"
  vpc_id = aws_vpc.Development-vpc.id
  availability_zone = "${var.region}a"
  tags = {
    Name = "Development-envn-subnet-1"
  }
}

resource "aws_subnet" "Development-subnet-2" {
  vpc_id = aws_vpc.Development-vpc.id
  cidr_block = "${var.public_subnet_2_cidr}"
  availability_zone = "${var.region}b"
  tags = {
    Name = "Development-envn-subnet-2"
  }
}

resource "aws_subnet" "Development-envn-subnet-3" {
  vpc_id = aws_vpc.Development-vpc.id
  cidr_block = "${var.public_subnet_3_cidr}"
  availability_zone = "${var.region}c"
  tags = {
    Name = "Development-envn-subnet-3"
  }
}

