resource "aws_ecs_task_definition" "client" {
  family                   = "${var.default_tags.project}-client"
  requires_compatibilities = ["FARGATE"]
  cpu                      = 256
  memory                   = 512
  network_mode             = "awsvpc"

  container_definitions = jsonencode([
    {
      name      = "client"
      image     = "nicholasjackson/fake-service:v0.23.1"
      cpu       = 0
      essential = true

      portMappings = [
        {
          containerPort = 9090
          hostPort      = 9090
          protocol      = "tcp"
        }
      ]
      environment = [
        {
          name  = "NAME"
          value = "client"
        },
        {
          name  = "MESSAGE"
          value = "Hello from the client!"
        }
      ]
    }
  ])

}