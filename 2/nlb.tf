resource "aws_lb" "test_nlb" {
  name               = "test-nlb"
  internal           = false
  load_balancer_type = "network"
  subnets            = [aws_subnet.pub_subnet_2a.id, aws_subnet.pub_subnet_2b.id]

  enable_deletion_protection = false

  tags = {
    Environment = "production"
  }
}

resource "aws_lb_target_group" "test_nlb_tg_ip" {
  name        = "Test-nlb-tg"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = aws_vpc.test_vpc.id
}
