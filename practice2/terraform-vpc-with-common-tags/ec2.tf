resource "aws_instance" "web" {
  ami           = "ami-0ff30663ed13c2290"
  instance_type = "t2.micro"
  user_data     = file("init-script.sh")
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.demo-ssh-http-allowed.id]
  subnet_id = aws_subnet.demo-subnet-public-1.id
  tags = {
    Name = "demo-project"
  }
}