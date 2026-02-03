resource "aws_route_table" "devops_private_route_table" {
  vpc_id = aws_vpc.devops_vpc.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.devops_nat_gateway.id
  }
  tags = {
    Name = "${var.env}-private-route-table"
  }
}