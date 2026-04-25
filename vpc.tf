resource "aws_vpc" "mycustomvpc" {
  cidr_block           = "192.168.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  

  tags = {
    "contct" = "Emmanuel Sedas"
    "app"    = "Emmanuel'VPC-demo"
    "env"    = "test"
    "elcid"  = "itclarch"
    Name = "Emmanuel'VPC-demo"
  }
}