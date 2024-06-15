variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.10.0.0/16"
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "main-vpc"
}

variable "subnet_cidrs" {
  description = "VPC's attached subnets CIDR's"
  type        = list(string)
  default     = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
}

variable "subnet_availability_zones" {
  description = "VPC's attached subnets availability zones"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}

variable "subnet_name" {
  description = "VPC's attached subnets name"
  type        = string
  default     = "main-subnet"
}