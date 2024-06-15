resource "aws_subnet" "main" {
  count             = length(var.subnet_cidrs)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidrs[count.index]
  availability_zone = var.subnet_availability_zones[count.index]

  tags = {
    Name      = var.subnet_name
    Terraform = true
  }
}