resource "aws_subnet" "devops_private_subnet" {
  vpc_id     = aws_vpc.devops_vpc.id
  cidr_block = var.private_subnet_cidr
  availability_zone = var.availability_zone
  tags = {
    Name = "${var.env}-private-subnet"
  }
}