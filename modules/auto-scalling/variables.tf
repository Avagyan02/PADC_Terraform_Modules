variable "lt_ami" {
  type = string
  default = "ami-02c41ffdfd4172736"
}

variable "lt_key_name" {
  type = string
  default = "id_rsa"
}

variable "lt_instance_type" {
  type = string
  default = "t2.micro"
}

variable "lt_associate_public_ip_address" {
  type = bool
  default = false
}

variable "vpc_id" {
  type = string
}

variable "sg_allowed_ports" {
  type        = list(number)
  default     = [22, 80, 443]
}

variable "sg_allowed_ip_ranges" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "lt_create_before_destroy" {
  type = bool
  default = false
}

variable "lt_name_prefix" {
  type = string
  default = "example-"
}

variable "as_subnet_ids" {
  type = list(number)
}

variable "as_desired_capacity" {
  type = number
  default = 2
}

variable "as_max_size" {
  type = number
  default = 3
}

variable "as_min_size" {
  type = number
  default = 1
}

variable "as_name" {
  type = string
  default = "main"
}

variable "as_create_before_destroy" {
  type = bool
  default = false
}

# variable "tg_arn" {
#   type = string
# }