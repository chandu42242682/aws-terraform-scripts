# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type        = string
}

# Environment Variable
variable "environment" {
  description = "Env for the VPC"
  type = string
}