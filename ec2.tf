resource "aws_instance" "ec2_pub1" {
  ami                         = "ami-0d081196e3df05f4d"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_subnet_1.id
  key_name                    = "cloud2"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow_ssh_http.id]
  user_data                   = templatefile("command.sh", { title = "Nginx EC2 1 - Jose Lopez - Cloud 2" })

  tags = {
    Name = "ec2_pub1"
  }
}

resource "aws_instance" "ec2_pub2" {
  ami                         = "ami-0d081196e3df05f4d"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_subnet_2.id
  key_name                    = "cloud2"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow_ssh_http.id]
  user_data                   = templatefile("command.sh", { title = "Nginx EC2 2 - Jose Lopez - Cloud 2" })

  tags = {
    Name = "ec2_pub2"
  }
}
