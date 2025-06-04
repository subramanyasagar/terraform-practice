resource "aws_eip" "nat" {
  vpc = true
}

resource "aws_nat_gateway" "my-app-nat-gateway" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.my-app-public-subnet.id

  tags = {
    Name = "my-app-nat-gateway"
  }

}

resource "aws_route" "private_nat_gateway" {
  route_table_id         = aws_route_table.my_app_private_rt.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.my-app-nat-gateway.id
}