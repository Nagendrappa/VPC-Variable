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

Deployment
Clone the repository:

Bash
git clone https://github.com/Nagendrappa/VPC-Variable.git
cd VPC-Variable
Initialize Terraform:

Bash
terraform init
Review the plan:

Bash
terraform plan
Apply the configuration:

Bash
terraform apply -auto-approve

📂 Repository Structure
This project follows the Separation of Concerns principle by splitting resources into logical files:
├── provider.tf        # AWS Provider & Versioning
├── var.tf             # Input variables (CIDR, Regions, Instance Types)
├── vpc.tf             # Core VPC Definition
├── igw.tf / nat.tf    # Internet and NAT Gateways
├── eip.tf             # Elastic IP for NAT
├── public-subnet.tf   # Public Tier logic
├── private-subnet.tf  # Private Tier logic
├── public-ec2.tf      # Bastion Host configuration
├── private-ec2.tf     # Private App instances
└── sg.tf              # Security Group ingress/egress rules
