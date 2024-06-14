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

variable "vpc_id" {
  type = string
}

variable "tg_name" {
  description = "The name of the target group"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "health_check_path" {
  description = "The path for the health check"
  type        = string
  default     = "/"
}

variable "health_check_interval" {
  description = "The interval for the health check in seconds"
  type        = number
  default     = 30
}

variable "health_check_timeout" {
  description = "The timeout for the health check in seconds"
  type        = number
  default     = 5
}

variable "healthy_threshold" {
  description = "The number of consecutive health checks successes required before considering an unhealthy target healthy"
  type        = number
  default     = 5
}

variable "unhealthy_threshold" {
  description = "The number of consecutive health check failures required before considering a target unhealthy"
  type        = number
  default     = 2
}

variable "health_check_matcher" {
  description = "The HTTP codes to use when checking for a healthy response from a target"
  type        = string
  default     = "200-299"
}
