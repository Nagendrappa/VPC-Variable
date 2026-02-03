resource "aws_route_table_association" "devops_private_route_table_association" {
  subnet_id      = aws_subnet.devops_private_subnet.id
  route_table_id = aws_route_table.devops_private_route_table.id
}
