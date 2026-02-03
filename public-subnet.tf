resource "aws_subnet" "devops_public_subnet" {
  vpc_id     = aws_vpc.devops_vpc.id
  cidr_block = var.public_subnet_cidr
  availability_zone = var.availability_zone
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.env}-public-subnet"
  }
}

#aws_subnet.devops_public_subnet