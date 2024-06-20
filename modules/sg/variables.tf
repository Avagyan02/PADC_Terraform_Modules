variable "vpc_id" {
  type = string
}

variable "sg_name" {
 type = string 
}

variable "sg_allowed_ports" {
  type = list(string)
}

variable "sg_allowed_ip_ranges" {
  type = list(string)
}