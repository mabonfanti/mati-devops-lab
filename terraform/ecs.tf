resource "aws_ecs_cluster" "mati_cluster" {
  name = "mati-devops-lab-cluster"
  
  configuration {
    execute_command_configuration {
      logging = "DEFAULT"
    }
  }
}