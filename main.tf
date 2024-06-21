module "vpc_module" {
  source                    = "./modules/vpc"
  subnet_availability_zones = var.subnet_availability_zones
  vpc_cidr                  = var.vpc_cidr
  subnet_name               = var.subnet_name
  vpc_name                  = var.vpc_name
  subnet_cidrs              = var.subnet_cidrs
}

module "ec2_module" {
  source               = "./modules/ec2"
  subnet_id            = module.vpc_module.subnet_id[0]
  vpc_id               = module.vpc_module.vpc_id
  ec2_name             = var.ec2_name
  ec2_key_name         = var.ec2_key_name
  ec2_instance_type    = var.ec2_instance_type
  ec2_user_data        = var.ec2_user_data
  ec2_ami              = var.ec2_ami
  ec2_count = var.ec2_count
  sg_ids = [module.sg_module_for_ec2.sg_id]
}

module "lambda_module" {
  source                       = "./modules/lambda"
  vpc_id = module.vpc_module.vpc_id
  lambda_file_name             = var.lambda_file_name
  lambda_function_name         = var.lambda_function_name
  lambda_runtime               = var.lambda_runtime
  lambda_handler_name          = var.lambda_handler_name
  lambda_role_policy = var.lambda_role_policy
  lambda_subnet_ids = module.vpc_module.subnet_id
  sg_ids = [module.sg_module_for_lambda.sg_id]
}

module "auto_scalling_module" {
  source                         = "./modules/auto-scalling"
  vpc_id                         = module.vpc_module.vpc_id
  as_subnet_ids                  = module.vpc_module.subnet_id
  tg_arn                         = module.load_balancer_module.tg_arn
  as_name                        = var.as_name
  as_min_size                    = var.as_min_size
  as_max_size                    = var.as_max_size
  lt_name_prefix                 = var.lt_name_prefix
  lt_create_before_destroy       = var.lt_create_before_destroy
  as_desired_capacity            = var.as_desired_capacity
  lt_ami                         = var.lt_ami
  lt_key_name                    = var.lt_key_name
  lt_instance_type               = var.lt_instance_type
  lt_associate_public_ip_address = var.lt_associate_public_ip_address
  sg_ids = [module.sg_module_for_lt.sg_id]
}

module "load_balancer_module" {
  source                        = "./modules/load-balancer"
  vpc_id                        = module.vpc_module.vpc_id
  lb_subnet_ids                 = module.vpc_module.subnet_id
  lb_port                       = var.lb_port
  health_check_matcher          = var.health_check_matcher
  lb_type                       = var.lb_type
  unhealthy_threshold           = var.unhealthy_threshold
  lb_name                       = var.lb_name
  health_check_path             = var.health_check_path
  lb_internal                   = var.lb_internal
  health_check_timeout          = var.health_check_timeout
  healthy_threshold             = var.healthy_threshold
  tg_name                       = var.tg_name
  lb_enable_deletion_protection = var.lb_enable_deletion_protection
  health_check_interval         = var.health_check_interval
  attached_ec2_port = var.lb_attached_ec2_port
  attached_ec2 = module.ec2_module.ec2_instance_ids[0]
  sg_ids = [module.sg_module_for_lb.sg_id]
}

module "s3_module" {
  source                 = "./modules/s3"
  bucket_encryption_type = var.bucket_encryption_type
  bucket_name            = var.bucket_name
  bucket_versioning      = var.bucket_versioning
  static_website_index_key = var.static_website_index_key
  static_website_error_source = var.static_website_error_source
  static_website_index_acl = var.static_website_index_acl
  static_website_error_acl = var.static_website_error_acl
  static_website_file_acl = var.static_website_file_acl
  static_website_error_key = var.static_website_error_key
  static_website_index_source = var.static_website_index_source
  files_to_upload = var.files_to_upload
  cf_origin_access_identity = module.cloudfront_module.cf_origin_access_identity
}

module "cloudfront_module" {
  source = "./modules/cloud-front"
  s3_bucket_domain = module.s3_module.bucket_regional_domain
  cf_cookies_forward = var.cf_cookies_forward
  cf_max_ttl = var.cf_max_ttl
  cf_cloudfront_default_certificate = var.cf_cloudfront_default_certificate
  cf_cached_methods = var.cf_cached_methods
  cf_default_ttl = var.cf_default_ttl
  cf_restriction_type = var.cf_restriction_type
  cf_origin = var.cf_origin
  cf_min_ttl = var.cf_min_ttl
  cf_allowed_methods = var.cf_allowed_methods
  cf_enabled = var.cf_enabled
  cf_viewer_protocol_policy = var.cf_viewer_protocol_policy
  cf_default_root_object = var.cf_default_root_object
  cf_query_string = var.cf_query_string
}

module "sg_module_for_lb" {
  source = "./modules/sg"
  vpc_id = module.vpc_module.vpc_id
  sg_allowed_ports = var.sg_allowed_ports_for_lb
  sg_allowed_ip_ranges = var.sg_allowed_ip_ranges_for_lb
  sg_name = "lb_sg"
}

module "sg_module_for_lt" {
  source = "./modules/sg"
  vpc_id = module.vpc_module.vpc_id
  sg_allowed_ports = var.sg_allowed_ports_for_lt
  sg_allowed_ip_ranges = var.sg_allowed_ip_ranges_for_lt
  sg_name = "lt_sg"
}

module "sg_module_for_ec2" {
  source = "./modules/sg"
  vpc_id = module.vpc_module.vpc_id
  sg_allowed_ports = var.sg_allowed_ports_for_ec2
  sg_allowed_ip_ranges = var.sg_allowed_ip_ranges_for_ec2
  sg_name = "ec2_sg"
}

module "sg_module_for_lambda" {
  source = "./modules/sg"
  vpc_id = module.vpc_module.vpc_id
  sg_allowed_ports = var.allowed_ports_for_lambda
  sg_allowed_ip_ranges = var.allowed_ip_ranges_for_lambda
  sg_name = "lambda_sg"
}