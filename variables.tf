variable "aws_region" {
    default = "us-east-1"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "ami_id" {
  default = "ami-091138d0f0d41ff90"
}
variable "instance_count" {
  default = 3
}
variable "instances"{
  default = {
    web1 = {
      instance_type = "t3.micro"
      ami_id = "ami-091138d0f0d41ff90"
    }
    web2 = {
      instance_type = "t3.small"
      ami_id = "ami-091138d0f0d41ff90"
    }
  }
}