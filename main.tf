terraform{

    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 5.87.0"
        }
    }

  required_version = ">= 1.10.5"
}

provider "aws" {
    region = "eu-west-1"
    access_key = "AKIAWCYYAGMNWM4BU66X"
    secret_key = "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"
}

module "VPC" {
  source = "./VPC"
  vpc_id = module.VPC.vpc_id
}

module "security_group" {
  source = "./SecurityGroups"
  vpc_id = module.VPC.vpc_id
}

module "key_pair" {
  source = "./KeyPairs"
}

module "EC2_resources" {
  source = "./EC2Script"

  vpc_id = module.VPC.vpc_id
  security_group_id = module.security_group.security_group_id
  public_subnet_id = module.VPC.public_subnet_id
  key_name = module.key_pair.key_name
}
