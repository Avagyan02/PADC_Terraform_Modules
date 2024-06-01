variable "VPC_NAME" {
  type    = string
  default = "SAM-VPC"
}
variable "VPC_CIDR" {
  type    = string
  default = "192.168.0.0/16"
}
variable "PUBLIC_SUBNET_NAME" {
  type    = string
  default = "SAM-PUBLIC"
}
variable "PUBLIC_SUBNET_CIDR" {
  type    = string
  default = "192.168.1.0/24"
}
variable "PRIVATE_SUBNET_NAME" {
  type    = string
  default = "SAM-PRIVATE"
}
variable "PRIVATE_SUBNET_CIDR" {
  type    = string
  default = "192.168.2.0/24"
}
variable "INTERNET_GATEWAY_NAME" {
  type    = string
  default = "SAM-IGW"
}
variable "NAT_GATEWAY_NAME" {
  type    = string
  default = "SAM-NGW"
}
variable "PUBLIC_RT_NAME" {
  type    = string
  default = "SAM-PUB-RT"
}
variable "PRIVATE_RT_NAME" {
  type    = string
  default = "SAM-PRIV-RT"
}