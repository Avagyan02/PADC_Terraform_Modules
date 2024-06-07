output "PUBLIC_IP" {
  value       = aws_instance.my_ec2.public_ip
  description = "Public IP of created EC2 instance"
}