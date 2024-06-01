resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name      = var.PUBLIC_RT_NAME
    By        = "Sam"
    Terraform = true

  }
}

resource "aws_route_table_association" "public" {
  depends_on     = [aws_subnet.public]
  route_table_id = aws_route_table.public_rt.id
  subnet_id      = aws_subnet.public.id
}

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name      = var.PRIVATE_RT_NAME
    By        = "Sam"
    Terraform = true

  }
}

resource "aws_route_table_association" "private" {
  depends_on     = [aws_subnet.private]
  route_table_id = aws_route_table.private_rt.id
  subnet_id      = aws_subnet.private.id
}