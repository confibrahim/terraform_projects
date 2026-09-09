terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
backend "s3" {
   bucket = "terraform-state-ibrahim"
   key    = "terraform.tfstate"
   region = "eu-west-2" 
 }
}



 
