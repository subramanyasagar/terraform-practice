resource "aws_instance" "my-app-public"{
    ami = "ami-0afc7fe9be84307e4"
    instance_type = var.instanceType
    subnet_id = aws_subnet.my-app-public-subnet.id
    associate_public_ip_address = true
    key_name = "my-tf-based-instances-kp"
    tags = {
        Name = "my-app-public"
    }
}

resource "aws_instance" "my-app-private"{
    ami = "ami-0afc7fe9be84307e4"
    instance_type = var.instanceType
    subnet_id = aws_subnet.my-app-private-subnet.id
    key_name = "my-tf-based-instances-kp"
    tags = {
        Name = "my-app-private"
    }
}