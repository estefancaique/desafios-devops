provider "aws" {
  access_key = "*****"
  secret_key = "*****"
  region     = "us-east-1"
}

# Resource configuration
resource "aws_instance" "idwall" {
  ami           = "ami-c80b0aa2"
  instance_type = "t2.micro"
}


resource "aws_security_group" "sg" {
  name = "${var.name}-sg"
  description = "Allow all inbound traffic"

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
	  
  }

  ingress {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
      from_port = 443
      to_port = 443
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

}

