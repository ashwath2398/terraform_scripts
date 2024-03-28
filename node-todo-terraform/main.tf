module "two-tier-test" {
  source        = "./my_modules"
  my_env        = "dev"
  ami           = "ami-0b8b44ec9a8f90422"
  instance_type = "t2.micro"
  key_name      = "2-tierkey"

}

resource "aws_key_pair" "new_key" {
  key_name   = "2-tierkey"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDS4oMHooqNVx1tcIRgP/wQmxA6/3WPonO+sNgjvrxllguvbqHmmCPoQ2L17aTvKErZ/7eJWgVycwRmU0AGjqgeRimOrR0skA/ss3n9CmdwlUp7RzD6W+lno7HmquwCyzEuUD0cf9GjIbYNRQQ+cuRH9cVzrJwiU0pwdvt/oGUSYZSwN1XnXGkErzzqeLSx8LZ+CLeS/eNvt0U4axYN5OqEkvx734eXe/1QWzwXfmtb0LmwzC5nmV2KVm4uVuOvE6V6AV1JUE0GqZvhvZ5fHBm0BBLd1lBodZ/IfNZIZpfqAJHGiucjYoSrTwMwYbi329N5AUb+stHRiAn67EE1Db2G2tvrk8QWxhskRyhfgpoRl8idJeSmY8Z3J6dzaznWe1PNSqW8iRbENb4Lf3iHU/+zen6yyULYQy+VZWEgEezRb/l5YVXdRgjWlP1/8HXSxchOCkKCeJFwWNz85psTAQkf79x0sSmwZdquHM2DN22Nn76r6Q0qKcHpNAZen7N//dU= ashwa@DESKTOP-062EJQB"
}
resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "my_SG" {
  name   = "my_SG"
  vpc_id = aws_default_vpc.default.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  /* ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "http"
    cidr_blocks = ["0.0.0.0/0"]
  }*/
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}