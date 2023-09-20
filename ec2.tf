provider "aws" {
  region = var.region
}

resource "aws_security_group" "sg1" {
    name = "test_lb"

ingress{
    from_port = "80"
    to_port = "80"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}  
}

resource "aws_lb" "alb" {
    name = "alb"
    subnets = ["subnet-003e0d2be7a6e79d0","subnet-0e71a2bcc02bf8d40"]
    internal = false
    load_balancer_type = "application"
    enable_deletion_protection = false
    enable_http2 = true

security_groups = [aws_security_group.sg1.id]
}  

resource "aws_lb_target_group" "abc-tg" {
    name = "abc-tg"
    port = 80
    protocol = "HTTP"
    vpc_id = "vpc-00634977f7d80c1d6"
  
}

resource "aws_lb_target_group_attachment" "abc-attch" {

    target_group_arn = aws_lb_target_group.abc-tg.arn
    target_id = "i-0cee1913eb17bcdae"
  
}
