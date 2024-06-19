variable "ec2_ami" {
  type        = string
}

variable "ec2_instance_type" {
  type        = string
}

variable "ec2_name" {
  type        = string
}

variable "subnet_id" {
  type        = string
}

variable "vpc_id" {
  type        = string
}

variable "sg_allowed_ports" {
  type        = list(number)
}

variable "sg_allowed_ip_ranges" {
  type        = list(string)
}

variable "ec2_key_name" {
  type        = string
}

variable "ec2_user_data" {
  type = string
}

variable "ec2_count" {
  type = number
}