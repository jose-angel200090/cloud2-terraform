resource "aws_subnet" "public_subnet_1" {
  vpc_id     = aws_vpc.cloud2_vpc.id
  cidr_block = "30.0.1.0/24"
  map_public_ip_on_launch = true

  availability_zone = "us-west-2a"

  tags = {
    Name = "public_subnet_1"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id     = aws_vpc.cloud2_vpc.id
  cidr_block = "30.0.2.0/24"
  map_public_ip_on_launch = true

  availability_zone = "us-west-2b"

  tags = {
    Name = "public_subnet_2"
  }
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id     = aws_vpc.cloud2_vpc.id
  cidr_block = "30.0.3.0/24"

  availability_zone = "us-west-2c"

  tags = {
    Name = "private_subnet_1"
  }
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id     = aws_vpc.cloud2_vpc.id
  cidr_block = "30.0.4.0/24"

  availability_zone = "us-west-2d" 

  tags = {
    Name = "private_subnet_2"
  }
}
