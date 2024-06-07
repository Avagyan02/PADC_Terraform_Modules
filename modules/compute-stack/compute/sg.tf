resource "aws_security_group" "my_sg" {
  name   = var.SG_NAME
  vpc_id = var.VPC_ID

  tags = {
    By        = "Sam"
    Terraform = true
  }
}

resource "aws_security_group_rule" "public_ssh_in" {
  type        = "ingress"
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = aws_security_group.my_sg.id
}

resource "aws_security_group_rule" "public_http_in" {
  type        = "ingress"
  from_port   = 80
  to_port     = 80
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = aws_security_group.my_sg.id
}

resource "aws_security_group_rule" "public_https_in" {
  type        = "ingress"
  from_port   = 443
  to_port     = 443
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = aws_security_group.my_sg.id
}