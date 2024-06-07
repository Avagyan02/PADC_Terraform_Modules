module "compute" {
  source           = "./compute"
  VPC_ID           = var.VPC_ID
  PUBLIC_SUBNET_ID = var.PUBLIC_SUBNET_ID
  AMI              = var.AMI
}