resource "aws_lb" "main" {
  name               = var.lb_name
  internal           = var.lb_internal
  load_balancer_type = var.lb_type
  security_groups    = [aws_security_group.main.id]
  subnets            = var.lb_subnet_ids

  enable_deletion_protection = var.lb_enable_deletion_protection
}

resource "aws_lb_target_group" "main" {
  name     = var.tg_name
  port     = var.lb_port
  protocol = "HTTP"
  vpc_id   = var.vpc_id

  health_check {
    path                = var.health_check_path
    interval            = var.health_check_interval
    timeout             = var.health_check_timeout
    healthy_threshold   = var.healthy_threshold
    unhealthy_threshold = var.unhealthy_threshold
    matcher             = var.health_check_matcher
  }
}

resource "aws_lb_listener" "main" {
  load_balancer_arn = aws_lb.main.arn
  port              = var.lb_port
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.main.arn
  }
}