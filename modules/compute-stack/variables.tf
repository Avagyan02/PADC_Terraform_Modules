variable "VPC_ID" {
  type = string
}
variable "PUBLIC_SUBNET_ID" {
  type = string
}
variable "EC2_NAME" {
  type    = string
  default = "my_ec2"
}
variable "AMI" {
  type    = string
  default = "ami-0c618421e207909d0"
}