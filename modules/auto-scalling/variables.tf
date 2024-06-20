variable "lt_ami" {
  type        = string
}

variable "lt_key_name" {
  type        = string
}

variable "lt_instance_type" {
  type        = string
}

variable "lt_associate_public_ip_address" {
  type        = bool
}

variable "vpc_id" {
  type        = string
}

variable "lt_create_before_destroy" {
  type        = bool
}

variable "lt_name_prefix" {
  type        = string
}

variable "as_subnet_ids" {
  type        = list(string)
}

variable "as_desired_capacity" {
  type        = number
}

variable "as_max_size" {
  type        = number
}

variable "as_min_size" {
  type        = number
}

variable "as_name" {
  type        = string
}

variable "tg_arn" {
  type        = string
}

variable "sg_ids" {
  type = list(string)
}