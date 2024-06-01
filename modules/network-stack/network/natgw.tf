resource "aws_eip" "elastic" {
  domain = "vpc"
}

resource "aws_nat_gateway" "nat" {
  subnet_id     = aws_subnet.public.id
  allocation_id = aws_eip.elastic.id

  tags = {
    Name      = var.NAT_GATEWAY_NAME
    by        = "Sam"
    Terraform = true

  }

  depends_on = [aws_internet_gateway.gw]
}