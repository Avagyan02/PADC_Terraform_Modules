variable "VPC_ID" {
  type = string
}
variable "PUBLIC_SUBNET_ID" {
  type = string
}
variable "AMI" {
  type = string
}
variable "KEY_NAME" {
  type    = string
  default = "id_rsa"
}
variable "INSTANCE_TYPE" {
  type    = string
  default = "t2.micro"
}
variable "SG_NAME" {
  type    = string
  default = "my_sg"
}
