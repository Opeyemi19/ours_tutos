# Security group for ALB
resource "aws_security_group" "sg-alb" {
  vpc_id        = var.vpc_id
  
  ingress {
    from_port   = var.webserver_port
    to_port     = var.webserver_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}


# Security group for ASG instances
resource "aws_security_group" "sg-instances" {
  vpc_id            = var.vpc_id
  
  ingress {
    from_port       = var.webserver_port
    to_port         = var.webserver_port
    protocol        = "tcp"
    security_groups = [aws_security_group.sg-alb.id]
  }

}

# ASG launch configuration
resource "aws_launch_configuration" "my-launchconfig" {

  lifecycle {
    create_before_destroy = true
  }

}