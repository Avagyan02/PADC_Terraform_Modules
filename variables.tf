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

variable "sg_allowed_ports_for_lt" {
  description = "Security group allowed ports"
  type        = list(number)
  default     = [22, 80, 443]
}

variable "sg_allowed_ip_ranges_for_lt" {
  description = "Security group allowed ip ranges"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "allowed_ports_for_lambda" {
  description = "Security group allowed ports"
  type        = list(number)
  default     = [22, 80, 443]
}

variable "allowed_ip_ranges_for_lambda" {
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

variable "ec2_ami" {
  description = "EC2 Server AMI id"
  type        = string
  default     = "ami-01e444924a2233b07"
}

variable "ec2_instance_type" {
  description = "EC2 Server instance type"
  type        = string
  default     = "t2.micro"
}

variable "ec2_name" {
  description = "EC2 Server name"
  type        = string
  default     = "main_ec2"
}

variable "sg_allowed_ports_for_ec2" {
  description = "Security group allowed ports"
  type        = list(number)
  default     = [22, 80, 443]
}

variable "sg_allowed_ip_ranges_for_ec2" {
  description = "S3 bucket versioning on or off"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "ec2_key_name" {
  description = "EC2 Server key name"
  type        = string
  default     = "id_rsa_ec2"
}

variable "ec2_user_data" {
  description = "EC2 user data"
  type        = string
  default     = <<EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y nginx
    sudo service nginx start
  EOF
}

variable "lambda_runtime" {
  description = "Lambda function runtime"
  type        = string
  default     = "nodejs20.x"
}

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

variable "tg_name" {
  description = "The name of the target group"
  type        = string
  default     = "main"
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

variable "sg_allowed_ports_for_lb" {
  description = "Security group allowed ports"
  type        = list(number)
  default     = [22, 80, 443]
}

variable "sg_allowed_ip_ranges_for_lb" {
  description = "Security group allowed ip ranges"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
  default     = "main-bucket-2"
}

variable "bucket_versioning" {
  description = "S3 bucket versioning on or off"
  type        = bool
  default     = false
}

variable "bucket_encryption_type" {
  description = "S3 bucket ecnryption type"
  type        = string
  default     = "AES256"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.10.0.0/16"
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "main-vpc"
}

variable "subnet_cidrs" {
  description = "VPC's attached subnets CIDR's"
  type        = list(string)
  default     = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
}

variable "subnet_availability_zones" {
  description = "VPC's attached subnets availability zones"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}

variable "subnet_name" {
  description = "VPC's attached subnets name"
  type        = string
  default     = "main-subnet"
}

variable "static_website_index_key" {
  description = "Static website index key"
  type = string
  default = "index.html"
}

variable "static_website_error_key" {
  description = "Static website error key"
  type = string
  default = "error.html"
}

variable "static_website_index_source" {
  description = "Static website index soruce"
  type = string
  default = "index.html"
}

variable "static_website_error_source" {
  description = "Static website error source"
  type = string
  default = "error.html"
}

variable "static_website_index_acl" {
  description = "Static website index acl"
  type = string
  default = "private"
}

variable "static_website_error_acl" {
  description = "Static website error acl"
  type = string
  default = "private"
}

variable "static_website_file_acl" {
  description = "Static website files acl"
  type = string
  default = "private"
}

variable "files_to_upload" {
  description = "List of local files to upload to S3"
  type        = list(string)
  default     = ["index.html", "error.html"]
}

variable "ec2_count" {
  description = "The EC2's count"
  type = number
  default = 1
}

variable "lb_attached_ec2_port" {
  description = "Attached ec2 port"
  type = number
  default = 80
}

variable "cf_origin" {
  description = "CloudFront origin"
  type = string
  default = "my-domain"
}

variable "cf_enabled" {
  description = "CloudFront distribution enable"
  type = bool
  default = false
}

variable "cf_default_root_object" {
  description = "CloudFront root object for default"
  type = string
  default = "index.html"
}

variable "cf_viewer_protocol_policy" {
  description = "CloudFront protocol policy for viewer"
  type = string
  default = "redirect-to-https"
}

variable "cf_query_string" {
  description = "CloudFront query string"
  type = bool
  default = false
}

variable "cf_cookies_forward" {
  description = "CloudFront cookies forward"
  type = string
  default = "none"
}

variable "cf_allowed_methods" {
  description = "CloudFront allowed methods"
  type = list(string)
  default = ["GET", "HEAD", "OPTIONS", "PUT", "POST", "PATCH", "DELETE"]
}

variable "cf_cached_methods" {
  description = "CloudFront cached methods"
  type = list(string)
  default = ["GET", "HEAD"]
}

variable "cf_min_ttl" {
  description = "CloudFront min ttl settings for caching"
  type = number
  default = 0
}

variable "cf_max_ttl" {
  description = "CloudFront max ttl setting for caching"
  type = number
  default = 86400
}

variable "cf_default_ttl" {
  description = "CloudFront default ttl"
  type = number
  default = 3600
}

variable "cf_restriction_type" {
  description = "CloudFront restriction type"
  type = string
  default = "none"
}

variable "cf_cloudfront_default_certificate" {
  description = "CloudFront default certificate"
  type = bool
  default = true
}