resource "aws_instance" "devops_private_ec2_instance" {
  ami           = var.ami_id # Use the variable defined in var.tf
  instance_type = var.instance_type
  subnet_id     = aws_subnet.devops_private_subnet.id
  vpc_security_group_ids = [aws_security_group.devops-security-group.id]
  key_name      = "myawskey" # Ensure this key pair exists in your AWS account
  associate_public_ip_address = false
  tags = {
    Name = "devops-private-ec2-instance"
  }
}

