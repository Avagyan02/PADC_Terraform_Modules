module "vpc_module" {
  source = "./modules/vpc"
}

module "ec2_module" {
  source    = "./modules/ec2"
  subnet_id = module.vpc_module.subnet_id[0]
  vpc_id    = module.vpc_module.vpc_id
}

module "lambda_module" {
  source = "./modules/lambda"
}

module "auto_scalling_module" {
  source        = "./modules/auto-scalling"
  vpc_id        = module.vpc_module.vpc_id
  as_subnet_ids = module.vpc_module.subnet_id
  tg_arn        = module.load_balancer_module.tg_arn
}

module "load_balancer_module" {
  source        = "./modules/load-balancer"
  vpc_id        = module.vpc_module.vpc_id
  lb_subnet_ids = module.vpc_module.subnet_id
}

module "s3_module" {
  source = "./modules/s3"
}
