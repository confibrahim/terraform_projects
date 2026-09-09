variable "instance_type" { 
  default    = "t3.micro"
  type        = string
  description = "EC2 instance type for the web server"
 }

 variable "user_data_key" {
    default     = "wordpress.sh"
    description = "Your user data file.."
}
variable "ami_id" {
    default     = "ami-0729131ef01366759"
    description = "The AMI ID for the EC2 instance"
} 



