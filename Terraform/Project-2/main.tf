provider "aws" {
    region = "us-east-1"
}

data "aws_subnet" "selected" {
    id = var.subnet_id
}

resource "aws" "ec2_1" {
 ami    ="ami-0c2b8ca1dad447f8a"
 instance_type = "t2.micro"
 subnet_id  = aws_subnet.mySubnet_1.subnet_id
 key_name   = "dev-account"
 tags = {
    Name = "HelloWorld"
 }
}
