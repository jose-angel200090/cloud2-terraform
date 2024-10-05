resource "aws_vpc" "cloud2_vpc" {
  cidr_block = "30.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "cloud2_vpc"
  }
}