provider "aws" {
  region = "eu-north-1"
  
}
module "vpc" {
  source = "./module/vpc"

  vpc_config = {
    name = "my-test-vpc"
    cidr_block = "10.0.0.0/16"
  }
  subnet_config = {
    public_subnet = {
        name = "public_subnet"
        cidr_block = "10.0.0.0/24"
        availability_zone = "eu-north-1a"
        public = true
    }

    private_subnet = {
        name = "private_subnet"
        cidr_block = "10.0.1.0/24"
        availability_zone = "eu-north-1a"
  }
 }
}
