terraform {

  backend "s3" {
    bucket = "rakesh.s3bucketpearlthoughts"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    encrypt      = true  
  }
}