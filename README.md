# Terraform-project-Durgadevops
Terraform Project
# AWS Infrastructure Automation using Terraform

## Project Overview

This project provisions a complete AWS infrastructure using Infrastructure as Code (IaC) with Terraform.

The infrastructure includes:

- Custom VPC
- Public and Private Subnets
- Internet Gateway
- Route Tables
- Security Groups
- EC2 Instance
- Amazon RDS (MySQL)
- Remote State Management using Amazon S3
- Reusable Variables and Outputs
- Default Resource Tagging

The objective is to demonstrate production-style Terraform coding practices while keeping the project simple enough for learning and interviews.

---

# Project Architecture

```

                Internet
                    │
            Internet Gateway
                    │
        -------------------------
        │                       │
        │                       │
    Public Subnet          Private Subnet
        │                       │
     EC2 Instance         MySQL RDS Database

```

---

# Folder Structure

```

terraform-project/
│
├── backend.tf
├── provider.tf
├── variables.tf
├── locals.tf
├── network.tf
├── security.tf
├── ec2.tf
├── rds.tf
├── outputs.tf
├── terraform.tfvars
└── README.md

```

---

# Files Description

## backend.tf

Configures the remote backend for storing Terraform state.

Features:

- Amazon S3 Backend
- State Encryption
- State Locking

---

## provider.tf

Configures

- AWS Provider
- Region
- Default Tags

---

## variables.tf

Contains all configurable input variables.

Examples

- AWS Region
- Instance Type
- AMI ID
- Database Credentials
- VPC CIDR

---

## locals.tf

Contains reusable values.

Example

```

common_tags

```

This avoids repeating tags across every resource.

---

## network.tf

Creates networking resources.

Resources

- VPC
- Internet Gateway
- Public Subnet
- Private Subnet
- Route Table
- Route Association

---

## security.tf

Creates Security Groups.

Inbound Rules

- SSH (22)
- HTTP (80)

Outbound Rules

- All Traffic

---

## ec2.tf

Creates an EC2 Instance.

Configuration

- Amazon Linux
- GP3 Root Volume
- Key Pair
- Security Group

---

## rds.tf

Creates

- DB Subnet Group
- MySQL Database

---

## outputs.tf

Displays important information after deployment.

Examples

- EC2 Public IP
- VPC ID
- RDS Endpoint

---

# Terraform Workflow

Initialize

```

terraform init

```

Validate

```

terraform validate

```

Format

```

terraform fmt

```

Create Execution Plan

```

terraform plan

```

Deploy Infrastructure

```

terraform apply

```

Destroy Infrastructure

```

terraform destroy

```

---

# AWS Resources Created

| Resource | Purpose |
|----------|----------|
| VPC | Network Isolation |
| Internet Gateway | Internet Access |
| Public Subnet | Hosts EC2 |
| Private Subnet | Hosts Database |
| Route Table | Routing |
| Security Group | Firewall |
| EC2 | Application Server |
| RDS | Database |
| S3 Backend | Terraform State |

---

# Skills Demonstrated

- Infrastructure as Code
- AWS Networking
- Terraform State Management
- EC2
- RDS
- Security Groups
- Variables
- Outputs
- Local Values
- Resource Dependencies

---

# Future Improvements

- NAT Gateway
- Auto Scaling Group
- Load Balancer
- Multi-AZ RDS
- IAM Roles
- Secrets Manager
- Terraform Modules
- Multiple Environments
- CI/CD with Jenkins
- GitHub Actions
- Monitoring using CloudWatch

---

# Author

Durga Prasad Patra | durgatech555@gmail.com

DevOps | AWS | Terraform | Docker | Kubernetes | Jenkins
