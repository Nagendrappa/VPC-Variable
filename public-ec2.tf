resource "aws_instance" "devops_public_ec2_instance" {
  ami                         = var.ami_id 
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.devops_public_subnet.id
  vpc_security_group_ids      = [aws_security_group.devops-security-group.id]
  key_name                    = "myawskey" # Ensure this key pair exists in your AWS account
  associate_public_ip_address = true
  tags = {
    Name = "devops-public-ec2-instance"
    Env  = var.env
  }
}




