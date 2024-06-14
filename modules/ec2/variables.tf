variable "ec2_ami" {
  type = string
  default = "ami-02c41ffdfd4172736"
}

variable "ec2_key_name" {
  type = string
  default = "id_rsa"
}

variable "ec2_instance_type" {
  type = string
  default = "t2.micro"
}

variable "ec2_name" {
  type = string
  default = "main_ec2"
}

variable "subnet_id" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "sg_allowed_ports" {
  type        = list(number)
  default     = [22, 80, 443]
}

variable "sg_allowed_ip_ranges" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
}