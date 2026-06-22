  output "ip_addr-1" {
    value = aws_instance.blade-ec2["web1"].public_ip
  }
  output "ip_addr-2" {
    value = aws_instance.blade-ec2["web2"].public_ip
  }
  