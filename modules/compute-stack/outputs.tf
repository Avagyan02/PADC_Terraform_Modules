output "PUBLIC_IP" {
  value       = module.compute.PUBLIC_IP
  description = "Public IP of created EC2 instance"
}