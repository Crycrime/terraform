resource "aws_instance" "ec2_in_2a" {
  ami                    = "ami-0e80a462ede03e653"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.pub_subnet_2a.id
  vpc_security_group_ids = [aws_security_group.allow_http.id]
  user_data              = file("user_data.sh")

  tags = {
    Name = "Instance in eu-west-2a"
  }
}

resource "aws_instance" "ec2_in_2b" {
  ami                    = "ami-0e80a462ede03e653"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.pub_subnet_2b.id
  vpc_security_group_ids = [aws_security_group.allow_http.id]
  user_data              = file("user_data.sh")

  tags = {
    Name = "Instance in eu-west-2a"
  }
}
