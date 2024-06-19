resource "aws_security_group" "main" {
  name   = "lambda_sg"
  vpc_id = var.vpc_id

  dynamic "ingress" {
    for_each = var.sg_allowed_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = var.sg_allowed_ip_ranges
    }
  }
}