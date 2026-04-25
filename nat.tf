resource "aws_eip" "nat" {
  domain = "vpc"
  depends_on = [aws_internet_gateway.igw]
  
  tags = {
    "contct" = "owner"
    "app"    = "owner's VPC"
    "env"    = "test"
  }

}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public_1.id
  
  tags = {
    "contct" = "owner"
    "app"    = "owner's VPC"
    "env"    = "test"
    Name = "Owners'VPC-demo-NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}
