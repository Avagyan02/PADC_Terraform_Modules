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
variable "ec2_key_name" {
  type        = string
}

variable "ec2_user_data" {
  type = string
}

variable "ec2_count" {
  type = number
}

variable "sg_ids" {
  type = list(string)
}