resource "aws_launch_template" "main" {
  name_prefix   = var.lt_name_prefix
  image_id      = var.lt_ami
  instance_type = var.lt_instance_type
  key_name      = var.lt_key_name

  network_interfaces {
    associate_public_ip_address = var.lt_associate_public_ip_address
    security_groups             = [aws_security_group.main.id]
  }

  lifecycle {
    create_before_destroy = var.lt_create_before_destroy
  }
}
