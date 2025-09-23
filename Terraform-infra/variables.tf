variable "region" {
  default = "ap-south-1"
}

variable "vpc_id" {
  default = "vpc-0d9dbe1cfc6c7880c"
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




variable "dockerhub_username" {
  type = string
}

variable "dockerhub_token" {
  type      = string
  sensitive = true
}
