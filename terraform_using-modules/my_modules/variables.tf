variable "ami" {
  type = string
  description = "this will store ami id"
}

variable "instance_count" {
    type = number
    description = "how many instance want to create"
  
}

variable "instance_type" {
  type = string
  description = "this will store instance type"
}

variable "my_env" {
  type = string
  description = "enviorment store"
}

variable "key_name" {
  type = string
  description = "this stores key"
}

variable "security_groups" {
  type = string
}