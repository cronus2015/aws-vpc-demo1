resource "aws_vpc" "mycustomvpc" {
  cidr_block           = "192.168.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  

  tags = {
    "contct" = "owner"
    "app"    = "owner's VPC"
    "env"    = "test"
     Name = "Owners' VPC-demo"
  }
}
