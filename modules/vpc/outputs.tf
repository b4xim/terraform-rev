output "vpc_id" {
  value = aws_vpc.blade-vpc.id
}
output "public_subnet_id" {
  value = aws_subnet.aws-public-subnet.id
}
output "private_subnet_id" {
  value = aws_subnet.aws-private-subnet.id
}