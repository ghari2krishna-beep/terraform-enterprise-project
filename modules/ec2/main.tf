resource "aws_instance" "web" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.sg_id]
  key_name               = var.key_name

  user_data = <<-EOF
              #!/bin/bash
              yum install nginx -y
              systemctl start nginx
              systemctl enable nginx
              echo "<h1>Terraform Enterprise Project</h1>" > /usr/share/nginx/html/index.html
              EOF

  tags = {
    Name = var.instance_name
  }
}