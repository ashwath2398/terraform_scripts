module "dev-infra" {
  source = "./my_modules"
  instance_count = 2
  instance_type = "t2.micro"
  ami = "ami-0b8b44ec9a8f90422"
  my_env = "dev"
  key_name = "terrakey"
  security_groups = 
}

module "prod-infra" {
  source = "./my_modules"
  instance_count = 1
  instance_type = "t2.micro"
  ami = "ami-0b8b44ec9a8f90422"
  my_env = "production"
  security_groups = 
  key_name = "terrakey"
}
