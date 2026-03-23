resource "aws_lb_target_group" "lab_tg" {
  name = "mati-devops-lab-tg"
  target_type = "ip"
  port = "3000"
  protocol = "HTTP"
  vpc_id = "vpc-034e0b2f7e5799407"
}