resource "aws_instance" "wordpress" {
  ami           = var.ami_id
  instance_type = var.instance_type 
  user_data = file("${path.module}/${var.user_data_key}")
  associate_public_ip_address = true

  tags = {
    Name = "wordpress"
  }
}

