resource "aws_security_group" "devops-security-group" {
  name        = "devops-security-group"
  description = "Security group for devops environment"
  vpc_id      = aws_vpc.devops_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ssh_cidr_block]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    #cidr_blocks = ["0.0.0.0/0"]
    cidr_blocks = [var.allow_icmp]
  }
  tags = {
  Name = "devops-security-group"
  }
} 

#aws_security_group.devops-security-group
