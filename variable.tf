variable "region" {}
variable "aws_vpc_cidr_block" {
  description = "aws_vpc_cidr_block"
  type = string
  default = "10.0.0.0/16"
}