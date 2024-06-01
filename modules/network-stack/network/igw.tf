resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name      = var.INTERNET_GATEWAY_NAME
    By        = "Sam"
    Terraform = true
  }
}