variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
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
