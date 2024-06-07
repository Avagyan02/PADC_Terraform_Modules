module "network-infra" {
  source = "../modules/network-stack"
}

module "compute-infra" {
  source           = "../modules/compute-stack"
  VPC_ID           = module.network-infra.VPC_ID
  PUBLIC_SUBNET_ID = module.network-infra.PUBLIC_SUBNET_ID
}