# VPC 
resource "aws_vpc" "TCS-Sales-VPC" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Sales_VPC"
  }
}