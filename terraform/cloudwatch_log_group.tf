resource "aws_cloudwatch_log_group" "log_group" {
  name              = "/ecs/mati-devops-lab"
  retention_in_days = 7
}