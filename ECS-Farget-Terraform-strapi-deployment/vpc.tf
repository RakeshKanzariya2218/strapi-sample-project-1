data "aws_vpc" "vpc" {
  id = "vpc-01b35def73b166fdc"
}


data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.vpc.id]
  }
}




