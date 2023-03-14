# Generic Variables

aws_region  =   "us-east-1"
environment =   "dev"

# VPC module variables

vpc_name    =   "vpc-dev"
vpc_cidr    =   "172.31.0.0/16"

availability_zones  =   ["us-east-1a", "us-east-1b"]

vpc_public_subnets_cidr         =   ["172.31.1.0/24", "172.31.2.0/24"]
vpc_private_subnets_cidr        =   ["172.31.10.0/24", "172.31.11.0/24"]
vpc_intra_subnets_cidr          =   ["172.31.21.0/24", "172.31.22.0/24"]
vpc_elasticache_subnets_cidr    =   ["172.31.31.0/24", "172.31.32.0/24"]
vpc_database_subnets_cidr       =   ["172.31.41.0/24", "172.31.42.0/24"]

create_database_subnet_group    =   true
create_database_subnet_route_table  =   true

enable_nat_gateway              =   true
single_nat_gateway              =   true
