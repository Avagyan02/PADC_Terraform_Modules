variable "vpc_cidr" {
  type = string
  default = "10.10.0.0/16"
}

variable "vpc_name" {
  type = string
  default = "main-vpc"
}

variable "subnet_cidr" {
  type = string
  default = "10.10.1.0/24"
}

variable "subnet_name" {
  type = string
  default = "main-subnet"
}