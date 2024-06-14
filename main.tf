module "vpc_module" {
  source = "./modules/vpc"
}

module "ec2_module" {
  source = "./modules/ec2"
  subnet_id = module.vpc_module.subnet_id
  vpc_id = module.vpc_module.vpc_id
}

# module "lambda_module" {
#   source = "./modules/lambda"
# }

module "auto_scalling" {
  source = "./modules/auto-scalling"
  vpc_id = module.vpc_module.vpc_id
  as_subnet_ids = [module.vpc_module.subnet_id]
}

