variable "region" {
  type        = string
  description = "The AWS Region"
  default     = "us-east-1"
}


variable "ami_key_pair_name" {

}

variable "region_list" {

  type        = list(string)
  description = "AWS Availability zones"
  default     = ["us-east-1a", "us-east-1b"]
}

variable "ami" {
  type        = map
  description = "Map of region vs ami id"
  default = {
    us-east-1 = "ami-0d729a60"
    us-west-1 = "ami-7c4b331c"
  }
}

variable "instance_type" {
  type        = string
  description = "AWS EC2 AMI Instance Type"
  default     = "t2.micro"
}

