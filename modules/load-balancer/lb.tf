resource "aws_lb" "main" {
  name               = var.lb_name
  internal           = var.lb_internal
  load_balancer_type = var.lb_type
  security_groups    = [aws_security_group.lb.id]
  subnets            = var.lb_subnet_ids

  enable_deletion_protection = var.lb_enable_deletion_protection
}

resource "aws_lb_target_group" "this" {
  name     = var.tg_name
  port     = 80
  protocol = "HTTP"
#   vpc_id   = var.vpc_id

  health_check {
    path                = "/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 5
    unhealthy_threshold = 2
    matcher             = "200-299"
  }
}

resource "aws_lb_listener" "this" {
  load_balancer_arn = aws_lb.this.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.this.arn
  }
}