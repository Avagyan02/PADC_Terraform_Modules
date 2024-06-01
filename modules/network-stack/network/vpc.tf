resource "aws_vpc" "main" {
  cidr_block = var.VPC_CIDR

  tags = {
    Name      = var.VPC_NAME
    By        = "Sam"
    Terraform = true
  }
}