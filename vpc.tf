# Create a VPC
resource "aws_vpc" "devops_vpc" {
  cidr_block= var.aws_vpc_cidr
  tags ={
    Name = var.aws_vpc_name
  }
}

#aws_vpc.devops_vpc