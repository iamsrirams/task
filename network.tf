
resource "aws_vpc" "arda-vpc" {
  cidr_block = var.cidr-block

  tags = {
    Name = "arda-vpc"
  }
}

resource "aws_subnet" "arda-subnet_1" {
  vpc_id                  = aws_vpc.arda-vpc.id
  cidr_block              = var.subnet1-cidr
  availability_zone       = "eu-west-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "arda-subnet_1"
  }
}


resource "aws_internet_gateway" "arda-igw" {
  vpc_id = aws_vpc.arda-vpc.id

  tags = {
    Name = "arda-igw"
  }
}
