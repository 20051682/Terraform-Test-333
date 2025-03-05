resource "aws_instance" "terraforn_test_ec2_333" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.security_group_id]
  subnet_id     = var.public_subnet_id
  key_name = var.key_name
  tags = {
    Name = "Terraform-Test-Ec2-333"
  }
}
