variable "lambda_role_policy" {
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

variable "sg_ids" {
  type = list(string)
}