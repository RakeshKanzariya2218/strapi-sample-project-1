data "aws_vpc" "vpc" {
  id = var.vpc_id
}


resource "aws_subnet" "public_subnet_1" {
  vpc_id            = data.aws_vpc.vpc.id
  cidr_block        = var.public_subnet_1_cidr
  availability_zone = "ap-south-1a"
  tags = { Name = "${var.project_name}-public-subnet-1" }
}


data "aws_internet_gateway" "default" {
  filter {
    name   = "attachment.vpc-id"
    values = [var.vpc_id]
  }
}



resource "aws_route_table" "public_rt" {
  vpc_id = data.aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = data.aws_internet_gateway.default.id
  }
  tags = { Name = "${var.project_name}-public-rt" }
}

resource "aws_route_table_association" "public_subnet_1_assoc" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public_rt.id
}








