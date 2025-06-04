
resource "aws_route_table" "my_app_private_rt" {
  vpc_id = aws_vpc.my-app-vpc.id

  tags = {
    Name = "my_app_private_rt"
  }
}


resource "aws_route_table_association" "private_subnet_association" {
  subnet_id      = aws_subnet.my-app-private-subnet.id
  route_table_id = aws_route_table.my_app_private_rt.id
}



resource "aws_route_table" "my-app-public-rt" {
  vpc_id = aws_vpc.my-app-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-app-internet-gateway.id
  }

  tags = {
    Name = "my-app-public-rt"
  }
}

resource "aws_route_table_association" "public_subnet_assoc" {
  subnet_id      = aws_subnet.my-app-public-subnet.id
  route_table_id = aws_route_table.my-app-public-rt.id
}