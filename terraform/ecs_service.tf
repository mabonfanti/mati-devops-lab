resource "aws_ecs_service" "lab_service" {
  name                              = "mati-devops-lab-service"
  cluster                           = aws_ecs_cluster.mati_cluster.id
  desired_count                     = 1
  launch_type                       = "FARGATE"
  availability_zone_rebalancing     = "ENABLED"
  enable_ecs_managed_tags           = true
  health_check_grace_period_seconds = 10
  task_definition                   = aws_ecs_task_definition.task_definition.arn
  
  deployment_circuit_breaker {
        enable   = true
        rollback = true
    }
	
  tags = {
	
  }
  
  network_configuration {
	subnets = [
		"subnet-076815f2c312e55ee",
		"subnet-092bfc7488febc295"
	]

	security_groups = [
		"sg-05e6ff0952336cff5"
	]

	assign_public_ip = true
	}
	
  load_balancer {
	target_group_arn = aws_lb_target_group.lab_tg.arn
	container_name   = "mati-devops-lab-container"
	container_port   = 3000
	}
}