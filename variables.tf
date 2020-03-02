variable "region" {
  type        = string
  description = "The AWS Region"
}


variable "ami_key_pair_name" {}

variable "region_list" {
  type        = list(string)
  description = "AWS Availability zones"
}

variable "ami" {
  type        = map
  description = "Map of region vs ami id"
}

variable "instance_type" {
  type        = string
  description = "AWS EC2 AMI Instance Type"
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of security group ids"
  default     = ["sg-bcb12ac5", "sg-0bbdd299a18471ed9"]
}