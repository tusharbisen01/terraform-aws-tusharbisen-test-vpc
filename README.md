# terraform-aws-vpc


## Overview

This Terraform module creates an AWS VPC with a given CIDR block. It also creates multiple subnets (public and private), and for public subnets, it sets up an Internet Gateway (IGW) and appropriate route tables.

## Features

- Creates a VPC with a specified CIDR block
- Creates public and private subnets
- Creates an Internet Gateway (IGW) for public subnets
- Sets up route tables for public subnetsterraform-aws-vpc

  ## Usage 
...
module "vpc" {
  source = "./module/vpc"

  vpc_config = {
    name       = "your-vpc-name"
    cidr_block = "10.0.0.0/16"
  }
  subnet_config = {
    public_subnet = {
        name              = "public_subnet"
        cidr_block        = "10.0.0.0/24"
        availability_zone = "eu-north-1a"
        #To set the subnet as public, default is private
        public            = true
    }

    private_subnet = {
        name              = "private_subnet"
        cidr_block        = "10.0.1.0/24"
        availability_zone = "eu-north-1a"
  }
 }
}

...
