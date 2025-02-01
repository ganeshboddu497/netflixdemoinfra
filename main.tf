provider "aws" {
region = "us-west-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0810e059735ce3a9d"
instance_type = "t2.medium"
key_name = "raj"
vpc_security_group_ids = ["sg-0ef539053f942b101"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2", "Monitoring server"]
}
