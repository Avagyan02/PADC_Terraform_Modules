resource "aws_launch_template" "main" {
  name_prefix   = var.lt_name_prefix
  image_id      = var.lt_ami
  instance_type = var.lt_instance_type
  key_name      = var.lt_key_name

  network_interfaces {
    associate_public_ip_address = var.lt_associate_public_ip_address
    security_groups             = var.sg_ids
  }
}

resource "aws_key_pair" "generated_key_pair" {
  key_name   = var.lt_key_name
  public_key = file("${var.lt_key_name}.pub")
}