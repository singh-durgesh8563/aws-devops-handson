variable "aws_region" {
  description = "AWS region"
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "AMI ID for EC2"
  default     = "ami-0f918f7e67a3323f0" # Mumbai Ubuntu AMI
}

variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro"
}

