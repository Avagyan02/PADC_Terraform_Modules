variable "lb_name" {
  description = "Load balancer name"
  type        = string
  default     = "main"
}

variable "lb_internal" {
  description = "Load is internal"
  type        = bool
  default     = false
}

variable "lb_type" {
  description = "Load balancer type"
  type        = string
  default     = "application"
}

variable "lb_enable_deletion_protection" {
  description = "Is enable load balancer name"
  type        = bool
  default     = false
}

variable "lb_subnet_ids" {
  description = "Attached subnet ids"
  type        = list(string)
}

variable "tg_name" {
  description = "The name of the target group"
  type        = string
  default     = "main"
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
  description = "The number of health checks successes"
  type        = number
  default     = 5
}

variable "unhealthy_threshold" {
  description = "The number of health check failures"
  type        = number
  default     = 2
}

variable "health_check_matcher" {
  description = "Codes to use for checking a healthy response"
  type        = string
  default     = "200-299"
}

variable "lb_port" {
  description = "Load balancer port"
  type        = number
  default     = 80
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