variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_1_cidr" {
  default = "10.0.0.0/24"
}

variable "public_subnet_2_cidr" {
  default = "10.0.1.0/24"
}

variable "private_subnet_1_cidr" {
  default = "10.0.2.0/24"
}

variable "instance_type" {
  default = "t3.medium"
}

variable "key_name" {
  description = "EC2 Key Pair name"
}

variable "project_name" {
  default = "rakesh"
}
