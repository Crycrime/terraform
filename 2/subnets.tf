resource "aws_subnet" "pub_subnet_2a" {
  vpc_id                  = aws_vpc.test_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "eu-west-2a"
  map_public_ip_on_launch = true

  depends_on = [aws_internet_gateway.test_vpc_igw]

  tags = {
    Name = "Public subnet eu-west-2a"
  }
}

resource "aws_subnet" "pub_subnet_2b" {
  vpc_id                  = aws_vpc.test_vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "eu-west-2b"
  map_public_ip_on_launch = true

  depends_on = [aws_internet_gateway.test_vpc_igw]

  tags = {
    Name = "Public subnet eu-west-2b"
  }
}
