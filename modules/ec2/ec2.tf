resource "aws_instance" "main" {
  ami = var.ec2_ami
  count = var.ec2_count

  key_name               = var.ec2_key_name
  instance_type          = var.ec2_instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [aws_security_group.main.id]

  user_data = var.ec2_user_data

  tags = {
    By        = var.ec2_name
    Terraform = true
  }
}

resource "aws_key_pair" "generated_key_pair" {
  key_name   = var.ec2_key_name
  public_key = file("${var.ec2_key_name}.pub")
}