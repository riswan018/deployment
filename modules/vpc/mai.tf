resource "aws_vpc" "myvpc" {
  cidr_block       = var.cidr
  instance_tenancy = "default"  // default no ned to change

  tags = {
    Name = "${var.env}-vpc"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block =  var.cidrsubnet
  availability_zone = var.azsubnet

  tags = {
   Name = "${var.env}-subnet"
  }
}

output "subnet_id" {
    value = aws_subnet.subnet
  
}