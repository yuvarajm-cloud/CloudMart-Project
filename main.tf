provider "aws" {}

resource "aws_security_group" "web_sg" {
  name        = "web-sg"
  description = "Allow SSH and HTTP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


  resource "aws_instance" "web" {
    count         = 2
    ami           = "ami-0685bcc683dadb6b9"
    instance_type = "m7i-flex.large"
    key_name      = "awskey"
    vpc_security_group_ids = [aws_security_group.web_sg.id]
    user_data     = <<-EOF
                  #!/bin/bash
                  sudo yum update -y
                  sudo yum install httpd -y
                  sudo systemctl start httpd
                  sudo systemctl enable httpd
                EOF

    tags = {
      Name = "Cloud-DevOps-Project"
    }
}