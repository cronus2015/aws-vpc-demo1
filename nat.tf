resource "aws_eip" "nat" {
  domain = "vpc"
  depends_on = [aws_internet_gateway.igw]
  
  tags = {
    "contct" = "Emmanuel Sedas"
    "app"    = "Emmanuel'VPC-demo"
    "env"    = "test"
    "elcid"  = "itclarch"
  }

}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public_1.id
  
  tags = {
    "contct" = "Emmanuel Sedas"
    "app"    = "Emmanuel'VPC-demo"
    "env"    = "test"
    "elcid"  = "itclarch"
    Name = "Emmanuel'VPC-demo-NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}