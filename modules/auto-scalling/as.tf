resource "aws_autoscaling_group" "main" {
  launch_template {
    id      = aws_launch_template.main.id
    version = "$Latest"
  }

  vpc_zone_identifier = var.as_subnet_ids
  desired_capacity    = var.as_desired_capacity
  max_size            = var.as_max_size
  min_size            = var.as_min_size

  target_group_arns = [var.tg_arn]
}
