/*
   This is multi-line comment
*/

// This is a single line comment
variable ami_key_pair_name {}


provider "aws" {
  region     = "us-east-1"
}


resource "aws_instance" "base" {
  ami           = "ami-0d729a60"
  instance_type = "t2.micro"
  key_name = var.ami_key_pair_name
}

resource "aws_eip" "base" {
  instance = aws_instance.base.id
}