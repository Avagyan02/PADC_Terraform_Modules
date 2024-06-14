variable "lambda_role_file_path" {
  description = "Lambda function iam role arn"
  type = string
  default = "../../lambda_role_default.json"
}

variable "lambda_role_policy_file_path" {
  description = "Lambda function iam role arn"
  type = string
  default = "../../lambda_role_default_policy.json"
}

variable "lambda_file_name" {
  description = "Lambda function file name"
  type = string
  default = "index"
}

variable "lambda_function_name" {
  description = "Lambda function name"
  type = string
  default = "index"
}

variable "lambda_handler_name" {
  description = "Lambda function handler name"
  type = string
  default = "main-handler"
}

variable "lambda_runtime" {
  description = "Lambda function runtime"
  type = string
  default = "nodejs14.x"
}