resource "aws_key_pair" "my_key" {
  key_name   = "aws_key_333"
  public_key = file("/Users/hiroshkoshila/Terraform-Test-333/aws_key_333.pub") 
}
