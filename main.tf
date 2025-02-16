provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-03b8adbf322415fd0"
instance_type = "t2.medium"
key_name = "tom"
vpc_security_group_ids = ["sg-0facb74b72f44d6a7"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2", "Monitoring server"]
}
