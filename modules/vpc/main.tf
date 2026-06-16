resource "aws_vpc" "blade-vpc" {
    cidr_block = var.vpc_cidr
}
resource "aws_subnet" "aws-private-subnet" {
    cidr_block = var.private_subnet_cidr
    vpc_id = aws_vpc.blade-vpc.id
}
resource "aws_subnet" "aws-public-subnet" {
    cidr_block = var.public_subnet_cidr
    vpc_id = aws_vpc.blade-vpc.id
}
resource "aws_internet_gateway" "blade-igw" {
    vpc_id = aws_vpc.blade-vpc.id
}
resource "aws_route_table" "blade-public-rt" {
    vpc_id = aws_vpc.blade-vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.blade-igw.id
    }
    
}
resource "aws_route_table_association" "public-subnet-association" {
    subnet_id = aws_subnet.aws-public-subnet.id
    route_table_id = aws_route_table.blade-public-rt.id
}