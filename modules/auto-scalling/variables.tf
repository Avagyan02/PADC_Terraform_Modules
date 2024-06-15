variable "lt_ami" {
  description = "Launch template AMI id"
  type        = string
  default     = "ami-01e444924a2233b07"
}

variable "lt_key_name" {
  description = "Launch template key name"
  type        = string
  default     = "id_rsa"
}

variable "lt_instance_type" {
  description = "Launch template instance type"
  type        = string
  default     = "t2.micro"
}

variable "lt_associate_public_ip_address" {
  description = "Launch template associated publiv ip address"
  type        = bool
  default     = false
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "sg_allowed_ports" {
  description = "Security group allowed ports"
  type        = list(number)
  default     = [22, 80, 443]
}

variable "sg_allowed_ip_ranges" {
  description = "Security group allowed ip ranges"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "lt_create_before_destroy" {
  description = "Launch template before to destroy check"
  type        = bool
  default     = false
}

variable "lt_name_prefix" {
  description = "Launch template name prefix"
  type        = string
  default     = "example-"
}

variable "as_subnet_ids" {
  description = "Attached subnet ids"
  type        = list(string)
}

variable "as_desired_capacity" {
  description = "Auto scalling servers capacity"
  type        = number
  default     = 2
}

variable "as_max_size" {
  description = "Auto scalling servers max size"
  type        = number
  default     = 3
}

variable "as_min_size" {
  description = "Auto scalling servers min size"
  type        = number
  default     = 1
}

variable "as_name" {
  description = "Auto scalling name"
  type        = string
  default     = "main"
}

variable "tg_arn" {
  description = "Attached target group arn"
  type        = string
}