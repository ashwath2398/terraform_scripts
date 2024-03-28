resource "aws_instance" "my_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  #user_data     = file("index.sh")
  tags = {
    Name = "${var.my_env}-2-tier"
    env  = var.my_env
  }
}