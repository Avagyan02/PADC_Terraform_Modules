variable "ec2_ami" {
  description = "EC2 Server AMI id"
  type        = string
  default     = "ami-01e444924a2233b07"
}

variable "ec2_key_name" {
  description = "EC2 Server key name"
  type        = string
  default     = "id_rsa"
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

variable "subnet_id" {
  description = "EC2 Server which attached to subnet id"
  type        = string
}

variable "vpc_id" {
  description = "EC2 Server which attached to vpc id"
  type        = string
}

variable "sg_allowed_ports" {
  description = "Security group allowed ports"
  type        = list(number)
  default     = [22, 80, 443]
}

variable "sg_allowed_ip_ranges" {
  description = "S3 bucket versioning on or off"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}