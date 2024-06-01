resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.PUBLIC_SUBNET_CIDR
  map_public_ip_on_launch = true

  tags = {
    Name      = var.PUBLIC_SUBNET_NAME
    By        = "Sam"
    Terraform = true

  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.PRIVATE_SUBNET_CIDR

  tags = {
    Name      = var.PRIVATE_SUBNET_NAME
    By        = "Sam"
    Terraform = true

  }
}