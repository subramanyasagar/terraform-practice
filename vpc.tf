resource "aws_vpc"  "my-app-vpc"{
    cidr_block = "10.0.0.0/16"

      tags = {
        Name = "my-app-vpc"
  }
}