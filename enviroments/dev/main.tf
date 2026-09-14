module "vpc" {
  source = "./modules/vpc"
}

module "cloudinit" {
  source        = "./modules/cloudinit"
  user_data_key = "cloudinit-config.yaml"
}


