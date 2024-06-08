module "vpc_module" {
  source = "./modules/vpc"
}

module "ec2_module" {
  source = "./modules/ec2"
  subnet_id = module.vpc_module.subnet_id
}

