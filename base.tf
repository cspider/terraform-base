/*
   This is multi-line comment
*/

// This is a single line comment



provider "aws" {
  region = var.region
}


resource "aws_instance" "base" {
  //ami           = var.ami[var.region]
  // or
  ami                    = lookup(var.ami, var.region)
  instance_type          = var.instance_type
  key_name               = var.ami_key_pair_name
  vpc_security_group_ids = var.security_group_ids
}

resource "aws_eip" "base" {
  instance = aws_instance.base.id
  vpc      = true
}

