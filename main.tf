/*resource "aws_instance" "blade-ec2" {
    instance_type = var.instance_type
    ami = var.ami_id
    count = var.instance_count
    name = "blade-ec2-${count.index + 1}"
}
module "vpc" {
    source = "./modules/vpc"
    vpc_cidr = "10.0.0.0/16"
    public_subnet_cidr = "10.0.1.0/24"
    private_subnet_cidr = "10.0.2.0/24"
}*/
resource "aws_instance" "blade-ec2" {
    instance_type = each.value.instance_type
    ami = each.value.ami_id
    tags = {
        Name = each.key
    }
    
}
module "vpc" {
    source = "./modules/vpc"
    vpc_cidr = "10.0.0.0/16"
    public_subnet_cidr = "10.0.1.0/24"
    private_subnet_cidr = "10.0.2.0/24"
}