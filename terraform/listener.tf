resource "aws_lb_listener" "http_listener" {
  load_balancer_arn = aws_lb.lab_alb.arn
  port              = 80
  protocol          = "HTTP"
  
  default_action {
       target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:701632806490:targetgroup/mati-devops-lab-tg/27be3c5684d19e77"
       type = "forward"

    }
}