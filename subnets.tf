resource "aws_subnet" "my-app-private-subnet" {
  vpc_id     = aws_vpc.my-app-vpc.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "my-app-private-subnet"
  }

}

resource "aws_subnet" "my-app-public-subnet" {
  vpc_id     = aws_vpc.my-app-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "my-app-public-subnet"
  }
}
