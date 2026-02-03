## Architecture Diagram

![VPC Architecture Diagram](Architecture%20diagram.png)

# AWS VPC using Terraform (Variable Based)

## Overview
This project demonstrates a secure AWS VPC architecture provisioned using Terraform with reusable variables.

## The infrastructure includes:
- Custom VPC
- Public Subnet (Bastion Host)
- Private Subnet (Application EC2)
- Internet Gateway
- NAT Gateway with Elastic IP
- Public and Private Route Tables
- Security Groups with restricted SSH access

## Access Flow
Local Machine → Bastion Host (Public Subnet) → Private EC2 (Private Subnet)


## Key Features
- No direct internet access to private EC2 instances
- SSH access to private subnet only through bastion host
- Outbound internet access for private EC2 via NAT Gateway
- Fully parameterized using Terraform variables
- Clean separation of resources using multiple `.tf` files

## Prerequisites
- AWS Account
- Terraform >= 1.x
- AWS CLI configured with appropriate IAM permissions

## Usage
```bash
terraform init
terraform plan
terraform apply
Validation Performed
Successfully connected to private EC2 via bastion host
Verified private EC2 instances can download OS patches
Confirmed no direct SSH access from internet to private subnet
Security Best Practices
Private EC2 instances are not publicly accessible
SSH restricted using CIDR blocks
NAT Gateway used only for outbound traffic
Terraform state files excluded from version control

Repository Structure.
├── vpc.tf
├── igw.tf
├── nat.tf
├── eip.tf
├── public-subnet.tf
├── private-subnet.tf
├── public_route_table.tf
├── private_route_table.tf
├── public_route_table_association.tf
├── private_route_table_association.tf
├── public-ec2.tf
├── private-ec2.tf
├── sg.tf
├── provider.tf
├── var.tf
├── README.md

