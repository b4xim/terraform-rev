resource "aws_instance" "blade-ec2" {
    instance_type = var.instance_type
    ami = var.ami_id
}