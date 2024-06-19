variable "lambda_role_file_path" {
  type        = string
}

variable "lambda_role_policy_file_path" {
  type        = string
}

variable "lambda_file_name" {
  type        = string
}

variable "lambda_function_name" {
  type        = string
}

variable "lambda_handler_name" {
  type        = string
}

variable "lambda_runtime" {
  type        = string
}

variable "lambda_subnet_ids" {
  type        = list(string)
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