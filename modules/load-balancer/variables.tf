variable "lb_name" {
  type        = string
}

variable "lb_internal" {
  type        = bool
}

variable "lb_type" {
  type        = string
}

variable "lb_enable_deletion_protection" {
  type        = bool
}

variable "lb_subnet_ids" {
  type        = list(string)
}

variable "tg_name" {
  type        = string
}

variable "vpc_id" {
  type        = string
}

variable "health_check_path" {
  type        = string
}

variable "health_check_interval" {
  type        = number
}

variable "health_check_timeout" {
  type        = number
}

variable "healthy_threshold" {
  type        = number
}

variable "unhealthy_threshold" {
  type        = number
}

variable "health_check_matcher" {
  type        = string
}

variable "lb_port" {
  type        = number
}

variable "sg_allowed_ports" {
  type        = list(number)
}

variable "sg_allowed_ip_ranges" {
  type        = list(string)
}

variable "attached_ec2" {
  type = string
}

variable "attached_ec2_port" {
  type = number
}