resource "aws_nat_gateway" "devops_nat_gateway" {
  allocation_id = aws_eip.devops_eip.id
  subnet_id     = aws_subnet.devops_public_subnet.id
  tags = {
    Name = "${var.env}-nat-gateway"
  }
}

