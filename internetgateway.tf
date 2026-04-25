resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.mycustomvpc.id
  tags = {
    "contct" = "Emmanuel Sedas"
    "app"    = "Emmanuel'VPC-demo"
    "env"    = "test"
    "elcid"  = "itclarch"
    Name = "IGW"
  }
}