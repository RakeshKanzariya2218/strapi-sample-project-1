variable "region" {
  default = "ap-south-1"
}

variable "vpc_id" {
  default = "vpc-01b35def73b166fdc"
}

variable "public_subnet_1_cidr" {
  default = "10.0.0.0/24"
}


variable "instance_type" {
  default = "t3.medium"
}

variable "key_name" {
  default = "key-1"
}

variable "project_name" {
  default = "rakesh"
}

variable "docker_image_tag" {
  description = "Docker image tag to deploy on EC2"
  type        = string
}

variable "aws_access_key" {
  description = "AWS Access Key ID"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS Secret Access Key"
  type        = string
  sensitive   = true
}
