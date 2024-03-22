resource "local_file" "file1" {
	filename = "name.txt"
	content = "this file was created automatically by terraform"
	
}

resource "aws_instance" "instance1" {
	ami = "ami-0b8b44ec9a8f90422"
	instance_type = "t2.micro"
	key_name = "batch6-learner"
	tags= {
		name= "sv-1"
	}
}

