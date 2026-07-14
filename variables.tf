####################
# AWS
####################

variable "aws_region" {

  type = string

  default = "ap-south-1"

}

####################
# Project
####################

variable "project_name" {

  type = string

  default = "devops-project"

}

variable "environment" {

  type = string

  default = "dev"

}

####################
# VPC
####################

variable "vpc_cidr" {

  default = "10.0.0.0/16"

}

variable "public_subnet_cidr" {

  default = "10.0.1.0/24"

}

variable "private_subnet_cidr" {

  default = "10.0.2.0/24"

}

####################
# EC2
####################

variable "instance_type" {

  default = "t3.micro"

}

variable "ami_id" {

  description = "Amazon Linux 2023"

  default = "ami-xxxxxxxx"

}

variable "key_name" {

  default = "mykey"

}

####################
# RDS
####################

variable "db_name" {

  default = "appdb"

}

variable "db_username" {

  default = "admin"

}

variable "db_password" {

  sensitive = true

}
