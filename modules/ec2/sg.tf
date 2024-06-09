# resource "aws_security_group" "main" {
#   for_each = var.sg_inbound_rules

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }