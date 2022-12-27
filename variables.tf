variable "region" {
  type        = string
  description = "The region to deploy resources to"
  default     = "eu-south-1"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
  default     = "10.255.0.0/20"
}

variable "default_tags" {
  type        = map(string)
  description = "Map of default tagos to apply to resources"
  default = {
    "project" = "Learning live with AWS & HashiCorp"
  }
}

variable "public_subnet_count" {
  type        = number
  description = "Number of public subnets to create"
  default     = 2
}

variable "private_subnet_count" {
  type        = number
  description = "Number of private subnets to create"
  default     = 2
}
