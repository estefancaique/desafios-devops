provider "aws" {
  access_key = "AKIAID63NH6GJRLOIPAA"
  secret_key = "Z7EHUATFmwy9TJAE11dubB8eHZzuOAslStUijjFg"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-c80b0aa2"
  instance_type = "t2.micro"
}