variable "lb_name" {
  type = string
  default = "main"
}

variable "lb_internal" {
  type = bool
  default = false
}

variable "lb_type" {
  type = string
  default = "application"
}

variable "lb_enable_deletion_protection" {
  type = bool
  default = false
}

variable "lb_subnet_ids" {
  type = list(number)
}

variable "tg_name" {
  type = string
  default = "main"
}