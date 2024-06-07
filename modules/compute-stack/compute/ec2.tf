resource "aws_instance" "my_ec2" {
  ami = var.AMI

  key_name               = var.KEY_NAME
  instance_type          = var.INSTANCE_TYPE
  subnet_id              = var.PUBLIC_SUBNET_ID
  vpc_security_group_ids = [aws_security_group.my_sg.id]


  tags = {
    By        = "Sam"
    Terraform = true
  }
}


resource "aws_key_pair" "generated_key_pair" {
  key_name   = var.KEY_NAME
  public_key = file("${var.KEY_NAME}.pub")
}