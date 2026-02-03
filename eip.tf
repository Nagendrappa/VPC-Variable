resource "aws_eip" "devops_eip" {
  domain = "vpc"
  tags = {
    Name = "${var.env}-eip"
  }
}

#aws_eip.devops_eip