# 3. Public Subnets (AZ-a and AZ-b)
resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.mycustomvpc.id
  cidr_block              = "192.168.1.0/24"
  availability_zone       = "us-west-2a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-subnet-2a"
    "contct" = "owner"
    "app"    = "owner's VPC"
    "env"    = "test"
  }
}

resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.mycustomvpc.id
  cidr_block              = "192.168.2.0/24"
  availability_zone       = "us-west-2b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-subnet-2b"
    "contct" = "owner"
    "app"    = "owner's VPC"
    "env"    = "test"
  }
}

# 4. Private Subnets (AZ-a and AZ-b)
resource "aws_subnet" "private_1" {
  vpc_id            = aws_vpc.mycustomvpc.id
  cidr_block        = "192.168.10.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name    = "private-subnet-2a"
    "contct" = "owner"
    "app"    = "owner's VPC"
    "env"    = "test"
  }
}

resource "aws_subnet" "private_2" {
  vpc_id            = aws_vpc.mycustomvpc.id
  cidr_block        = "192.168.20.0/24"
  availability_zone = "us-west-2b"

  tags = {
    Name    = "private-subnet-2b"
    "contct" = "owner"
    "app"    = "owner's VPC"
    "env"    = "test"
  }
}
