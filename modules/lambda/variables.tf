variable "lambda_role_file_path" {
  description = "Lambda function iam role"
  type        = string
  default     = <<EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Principal": {
            "Service": "lambda.amazonaws.com"
          },
          "Action": "sts:AssumeRole"
        }
      ]
    }
  EOF
}

variable "lambda_role_policy_file_path" {
  description = "Lambda function iam role policy"
  type        = string
  default     = <<EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Action": [
            "logs:CreateLogGroup",
            "logs:CreateLogStream",
            "logs:PutLogEvents"
          ],
          "Resource": "arn:aws:logs:*:*:*"
        }
      ]
    }
  EOF
}

variable "lambda_file_name" {
  description = "Lambda function file name"
  type        = string
  default     = "hello-world-lambda.zip"
}

variable "lambda_function_name" {
  description = "Lambda function name"
  type        = string
  default     = "index"
}

variable "lambda_handler_name" {
  description = "Lambda function handler name"
  type        = string
  default     = "main-handler"
}

variable "lambda_runtime" {
  description = "Lambda function runtime"
  type        = string
  default     = "nodejs20.x"
}