resource "aws_vpc" "Development-vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    name = "Development-envn-vpc"
  }

}