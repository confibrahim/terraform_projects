Terraform Projects

A collection of Terraform projects covering AWS infrastructure, infrastructure as code, and cloud automation.

These projects are built to provision and manage AWS infrastructure using reusable Terraform configurations and modules.

Projects
AWS VPC and EC2

Terraform configuration for provisioning an AWS VPC and EC2 instance.

The EC2 instance is configured with Cloud Init, which installs and configures Nginx and serves a custom HTML page.

Technologies used:

Terraform
AWS
EC2
VPC
Cloud Init
Nginx

Requirements
Terraform
AWS account
AWS CLI
Appropriate AWS permissions
Usage

Clone the repository:

git clone https://github.com/confibrahim/terraform_projects.git
cd terraform_projects


Initialise Terraform:

terraform init


Validate the configuration:

terraform validate


Review the proposed changes:

terraform plan


Apply the configuration:

terraform apply


To remove the infrastructure:

terraform destroy

State

Terraform state is configured to use an S3 backend in the eu-west-2 region.

About

This repository contains infrastructure work and experiments focused on AWS, Terraform, automation, and DevOps practices.

More projects will be added over time.
