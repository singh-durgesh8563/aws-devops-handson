variable "aws_region" {
  description = "AWS region"
  default     = "ap-south-1" # You can change this if needed
}

variable "ami_id" {
  description = "AMI ID for EC2"
  default     = "ami-0f918f7e67a3323f0" # Mumbai Ubuntu 22.04 AMI
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}
