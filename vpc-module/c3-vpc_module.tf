# Dev VPC module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.19.0"
  

  # VPC Basic Details
  name = var.vpc_name
  cidr = var.vpc_cidr

  azs                           = var.availability_zones
  public_subnets                = var.vpc_public_subnets_cidr
  private_subnets               = var.vpc_private_subnets_cidr
  intra_subnets                 = var.vpc_intra_subnets_cidr
  elasticache_subnets           = var.vpc_elasticache_subnets_cidr
  
  private_subnet_suffix         = "frontend"
  intra_subnet_suffix           = "backend"
  

  # Database Subnets
  create_database_subnet_group         = var.create_database_subnet_group
  create_database_subnet_route_table   = var.create_database_subnet_route_table
  database_subnets                     = var.vpc_database_subnets_cidr


  # NAT Gateways - Outbound Communication
  enable_nat_gateway        = var.enable_nat_gateway
  #one_nat_gateway_per_az    = true
  single_nat_gateway        = var.single_nat_gateway


  # VPC DNS Parameters
  enable_dns_hostnames = true
  enable_dns_support = true


  # VPC and Subnet Tags
  public_subnet_tags = {
    Type = "public-subnets"
  }

  private_subnet_tags = {
    Type = "private-subnets"
  }

  intra_subnet_tags = {
    Type = "intra-subnets"
  }

  database_subnet_tags = {
    Type = "database-subnets"
  }

  tags = {
    Environment = var.environment
  }

  vpc_tags = {
    Name = var.vpc_name
  }
}