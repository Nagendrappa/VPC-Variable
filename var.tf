# AWS region variable
variable "region" {
  description = "The AWS region to deploy resources in"
  default     = "us-east-1"
}

# vpc cidr block
variable "aws_vpc_cidr" {
  description = "The CIDR block for the VPC"
  type = string
  default = "192.168.0.0/16" 
}

# VPC Name
variable "aws_vpc_name" {
  description= "The name of the VPC"
  type = string
  default = "devops-vpc"
  }

# Internet Gateway Name
variable "aws_igw_name" {
  description = "The name of the IGW"
  type = string
  default = "devops-igw"
}
#availability zone
variable "availability_zone" {
  description = "The availability zone for the subnet"
  type = string
  default = "us-east-1a"
}

# Public Subnet CIDR
variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type = string
  default = "192.168.1.0/24"
}

#private Subnet CIDR
variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type = string
  default = "192.168.2.0/24"
}

# Declaring env as variable
variable "env" {
  description = "The environment for the resources"
  type = string
  default = "dev"
}

#public route table name
variable "public_route_table_name" {
  description = "The name of the public route table"
  type = string
  default = "devops-public-rt"
}
#private route table name
variable "private_route_table_name" {
  description = "The name of the private route table"
  type = string
  default = "devops-private-rt"
}

#insntance creation block
variable "instance_type" {
  description = "The type of EC2 instance to create"
  type = string
  default = "t2.micro"
}

#AMI ID variable
variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type = string
  default = "ami-052064a798f08f0d3" # Amazon Linux 2 AMI
}

# #CIDR block for SSH access
variable "ssh_cidr_block" {
  description = "The CIDR block to allow SSH access from"
  type = string
  default = "0.0.0.0/0"
}

# #Allow ICMP variable
variable "allow_icmp" {
  description = "Whether to allow ICMP traffic"
  type = string
  default = "0.0.0.0/0"
}


