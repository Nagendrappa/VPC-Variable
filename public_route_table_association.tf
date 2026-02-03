resource "aws_route_table_association" "devops_public_route_table_association" {
  subnet_id      = aws_subnet.devops_public_subnet.id
  route_table_id = aws_route_table.devops_public_route_table.id
}
