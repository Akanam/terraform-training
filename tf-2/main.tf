provider "aws" {
  region  = "eu-west-2"
  version = "~> 2.0"
}

resource "aws_instance" "web" {
    ami           = "${var.ami}"
    instance_type = "t2.small"
    tags = {
        Name = "${var.name}"
    }
}


variable "ami" {
    default = "ami-0c3f128b7298d29b9"
}

variable "name" {
    default = "name"
}