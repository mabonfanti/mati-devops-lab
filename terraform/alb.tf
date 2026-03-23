resource "aws_lb" "lab_alb" {
  name               = "mati-devops-lab-alb"
  load_balancer_type = "application"
  internal           = false
  
  subnets = [
    "subnet-076815f2c312e55ee",
    "subnet-092bfc7488febc295"
  ]
  
  security_groups = [
    "sg-028bdf0924396be23"
  ]
}