module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.0.0"

  # VPC
  name           = var.vpc_name
  cidr           = var.vpc_cidr_block
  azs            = var.vpc_availability_zones
  public_subnets = var.vpc_public_subnets

  tags = {
    Department = "Prod"
  }
  vpc_tags = {
    VPC_Region = var.region

  }

  #Tags - Subnets
  public_subnet_tags = {
    Subnet_Type = "Public Subnets"
  }

}
