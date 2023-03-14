# VPC name
variable "vpc_name" {
  description   = "Name to my VPC"
  type          = string
}

# VPC cidr block
variable "vpc_cidr" {
  description   = "My VPC cidr block"
  type          = string
}

# availability zones for my VPC
variable "availability_zones" {
  description   = "My VPC availability zones"
  type          = list(string)
}

# VPC public subnets cidr
variable "vpc_public_subnets_cidr" {
  description   = "My VPC public subnets cidr"
  type          = list(string)
}


# VPC private subnets cidr
variable "vpc_private_subnets_cidr" {
  description   = "My VPC private subnets cidr"
  type          = list(string)
}

# VPC intra subnets cidr
variable "vpc_intra_subnets_cidr" {
  description   = "My VPC intra subnets cidr"
  type          = list(string)
}

# VPC elasticache subnets cidr
variable "vpc_elasticache_subnets_cidr" {
  description   = "My VPC elasticache subnets cidr"
  type          = list(string)
}

# VPC database subnets cidr
variable "vpc_database_subnets_cidr" {
  description   = "My VPC database subnets cidr"
  type          = list(string)
}

# Database subnet groups
variable "create_database_subnet_group" {
  description = "Database subnet groups"
  type = bool
}

# Database subnet routetable
variable "create_database_subnet_route_table" {
  description = "Database subnet routetable"
  type = bool
}

# NAT gateway
variable "enable_nat_gateway" {
  description = "My NAT gateway"
  type = bool
}

# Single NAT gateway for all AZ
variable "single_nat_gateway" {
  description = "Single NAT gateway for all AZ"
  type = bool
}