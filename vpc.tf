# VPC 
resource "aws_vpc" "TCS-Sales-VPC" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Sales_VPC"
  }
}
# public subnet
resource "aws_subnet" "tcs-subnet" {
  vpc_id     = aws_vpc.TCS-Sales-VPC.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "subnet-tcs"
  }
}