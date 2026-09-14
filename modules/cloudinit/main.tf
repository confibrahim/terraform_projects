resource "aws_instance" "cloudinit" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  user_data                   = data.cloudinit_config.nginx.rendered
  associate_public_ip_address = true

  tags = {
    Name = "cloudinit"
  }
}

data "cloudinit_config" "nginx" {
  gzip          = false
  base64_encode = false

  part {
    filename     = "cloudinit-config.yaml"
    content_type = "text/cloud-config"

    content = file("${path.root}/cloudinit-config.yaml")
  }
}
