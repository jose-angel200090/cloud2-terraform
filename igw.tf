resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.cloud2_vpc.id

  tags = {
    Name = "my_igw"
  }
}