resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.mycustomvpc.id
  tags = {
    "contct" = "owner"
    "app"    = "owner's VPC"
    "env"    = "test"
    Name = "IGW"
  }
}
