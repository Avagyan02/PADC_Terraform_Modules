output "VPC_NAME" {
  value       = module.network.VPC_NAME
  description = "Name of created VPC"
}
output "VPC_ID" {
  value       = module.network.VPC_ID
  description = "ID of created VPC"
}
output "VPC_CIDR" {
  value       = module.network.VPC_CIDR
  description = "CIDR of created VPC"
}
output "PUBLIC_SUBNET_NAME" {
  value       = module.network.PUBLIC_SUBNET_NAME
  description = "NAME of created Public-Subnet"
}
output "PUBLIC_SUBNET_ID" {
  value       = module.network.PUBLIC_SUBNET_ID
  description = "ID of created Public-Subnet"
}
output "PUBLIC_SUBNET_CIDR" {
  value       = module.network.PUBLIC_SUBNET_CIDR
  description = "CIDR of created Public-Subnet"
}
output "PRIVATE_SUBNET_NAME" {
  value       = module.network.PRIVATE_SUBNET_NAME
  description = "NAME of created Private-Subnet"
}
output "PRIVATE_SUBNET_ID" {
  value       = module.network.PRIVATE_SUBNET_ID
  description = "ID of created Private-Subnet"
}
output "PRIVATE_SUBNET_CIDR" {
  value       = module.network.PRIVATE_SUBNET_CIDR
  description = "CIDR of created Private-Subnet"
}
output "INTERNET_GATEWAY_NAME" {
  value       = module.network.INTERNET_GATEWAY_NAME
  description = "NAME of created Internet-Gateway"
}
output "INTERNET_GATEWAY_ID" {
  value       = module.network.INTERNET_GATEWAY_ID
  description = "ID of created Internet-Gateway"
}
output "NAT_GATEWAY_NAME" {
  value       = module.network.NAT_GATEWAY_NAME
  description = "NAME of created NAT-Gateway"
}
output "NAT_GATEWAY_ID" {
  value       = module.network.NAT_GATEWAY_ID
  description = "ID of created NAT-Gateway"
}
output "PUBLIC_RT_NAME" {
  value       = module.network.PUBLIC_RT_NAME
  description = "NAME of created Public Route-Table"
}
output "PUBLIC_RT_ID" {
  value       = module.network.PUBLIC_RT_ID
  description = "ID of created Public Route-Table"
}
output "PRIVATE_RT_NAME" {
  value       = module.network.PRIVATE_RT_NAME
  description = "NAME of created PRIVATE Route-Table"
}
output "PRIVATE_RT_ID" {
  value       = module.network.PRIVATE_RT_ID
  description = "ID of created PRIVATE Route-Table"
}