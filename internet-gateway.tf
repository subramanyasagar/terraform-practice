resource "aws_internet_gateway" "my-app-internet-gateway" {
  vpc_id = aws_vpc.my-app-vpc.id

  tags = {
    Name = "my-app-internet-gateway"
  }
}