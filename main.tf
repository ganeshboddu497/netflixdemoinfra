provider "aws" {
region = "ap-south-2"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-036ca7d3e7fe7595b"
instance_type = "t2.medium"
key_name = "rahull"
vpc_security_group_ids = ["sg-0b76fcef784b1087a"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2", "Monitoring server"]
}
