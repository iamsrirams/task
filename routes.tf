resource "aws_route_table" "arda-rt" {
  vpc_id = aws_vpc.arda-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.arda-igw.id
  }
  tags = {
    Name = "arda-rt"
  }
}

resource "aws_route_table_association" "rt-attch" {
  subnet_id      = aws_subnet.arda-subnet_1.id
  route_table_id = aws_route_table.arda-rt.id
}
