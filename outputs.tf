  output "ip_addr-1" {
    value = aws_instance.blade-ec2[0].public_ip
  }
  output "ip_addr-2" {
    value = aws_instance.blade-ec2[1].public_ip
  }
  output "ip_addr-3" {
    value = aws_instance.blade-ec2[2].public_ip
  }
