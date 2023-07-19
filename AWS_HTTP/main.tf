resource "aws_instance" "web_server" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = var.subnet_id
    security_groups = [aws_security_group.sg.id]

    user_data = <<-EOF
  #!/bin/bash
  echo "*** Installing apache2"
  sudo apt update -y
  sudo apt install apache2 -y
  echo "<H1>Hello Friends !</h1>" > /var/www/html/index.html
  echo "*** Completed Installing apache2"
  EOF

    tags = {
        Name = var.instance_name
    }
    volume_tags = {
        Name = var.instance_name
    } 
}