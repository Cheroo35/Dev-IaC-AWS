resource "aws_vpc" "Development-vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    name = "Development-envn-vpc"
  }
  
}

resource "aws_subnet" "Development-subnet-1" {
  cidr_block = "10.2.0.0/24"
  vpc_id = aws_vpc.Development-vpc.id
  availability_zone = "us-east-1a"
  tags = {
    name = "Development-envn-subnet-1"
  }
}