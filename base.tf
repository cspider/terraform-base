/*
   This is multi-line comment
*/

// This is a single line comment

provider "aws" {
   shared_credentials_file = "~/.aws/rootkey.csv"
   region = "us-east-1"
} 


resource "aws_instance" "base" {
    ami = "ami-0d729a60"
    instance_type ="t2.micro"

}