#create ec2
resource "aws_instance" "test-sv" {
    #count = 3
    ami = var.ami
    instance_type = var.instance_type
    count = var.instance_count
    key_name = var.key_name
    #security_groups = var.security_groups 
    #user_data = file("ec2\install.sh")
    tags = {
      Name = "${var.my_env}-test-sv"
      env = var.my_env
    }

}