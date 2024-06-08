resource "aws_instance" "main" {
  ami = var.ec2_ami

  key_name               = var.ec2_key_name
  instance_type          = var.ec2_instance_type
  subnet_id              = var.subnet_id
  # vpc_security_group_ids = [aws_security_group.my_sg.id]

  tags = {
    By        = var.ec2_name
    Terraform = true
  }
}