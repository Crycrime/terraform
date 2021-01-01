resource "aws_subnet" "pub_subnet_2a" {
  vpc_id            = aws_vpc.test_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "eu-west-2a"

  tags = {
    Name = "Public subnet eu-west-2a"
  }
}

resource "aws_subnet" "pub_subnet_2b" {
  vpc_id            = aws_vpc.test_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "eu-west-2b"

  tags = {
    Name = "Public subnet eu-west-2b"
  }
}
