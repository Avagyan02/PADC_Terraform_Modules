variable "vpc_cidr" {
  type        = string
}

variable "vpc_name" {
  type        = string
}

variable "subnet_cidrs" {
  type        = list(string)
}

variable "subnet_availability_zones" {
  type        = list(string)
}

variable "subnet_name" {
  type        = string
}