output "VPC_NAME" {
  value       = var.VPC_NAME
  description = "Name of created VPC"
}
output "VPC_ID" {
  value       = aws_vpc.main.id
  description = "ID of created VPC"
}
output "VPC_CIDR" {
  value       = var.VPC_CIDR
  description = "CIDR of created VPC"
}
output "PUBLIC_SUBNET_NAME" {
  value       = var.PUBLIC_SUBNET_NAME
  description = "NAME of created Public-Subnet"
}
output "PUBLIC_SUBNET_ID" {
  value       = aws_subnet.public.id
  description = "ID of created Public-Subnet"
}
output "PUBLIC_SUBNET_CIDR" {
  value       = var.PUBLIC_SUBNET_CIDR
  description = "CIDR of created Public-Subnet"
}
output "PRIVATE_SUBNET_NAME" {
  value       = var.PRIVATE_SUBNET_NAME
  description = "NAME of created Private-Subnet"
}
output "PRIVATE_SUBNET_ID" {
  value       = aws_subnet.private.id
  description = "ID of created Private-Subnet"
}
output "PRIVATE_SUBNET_CIDR" {
  value       = var.PRIVATE_SUBNET_CIDR
  description = "CIDR of created Private-Subnet"
}
output "INTERNET_GATEWAY_NAME" {
  value       = var.INTERNET_GATEWAY_NAME
  description = "NAME of created Internet-Gateway"
}
output "INTERNET_GATEWAY_ID" {
  value       = aws_internet_gateway.gw.id
  description = "ID of created Internet-Gateway"
}
output "NAT_GATEWAY_NAME" {
  value       = var.NAT_GATEWAY_NAME
  description = "NAME of created NAT-Gateway"
}
output "NAT_GATEWAY_ID" {
  value       = aws_nat_gateway.nat.id
  description = "ID of created NAT-Gateway"
}
output "PUBLIC_RT_NAME" {
  value       = var.PUBLIC_RT_NAME
  description = "NAME of created Public Route-Table"
}
output "PUBLIC_RT_ID" {
  value       = aws_route_table_association.public.id
  description = "ID of created Public Route-Table"
}
output "PRIVATE_RT_NAME" {
  value       = var.PRIVATE_RT_NAME
  description = "NAME of created PRIVATE Route-Table"
}
output "PRIVATE_RT_ID" {
  value       = aws_route_table_association.private.id
  description = "ID of created PRIVATE Route-Table"
}