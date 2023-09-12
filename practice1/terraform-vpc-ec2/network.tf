#create igw
resource "aws_internet_gateway" "demo-igw" {
    vpc_id = aws_vpc.demo-vpc.id

}

#create custom rtb
resource "aws_route_table" "demo-ctm-rtb" {
      vpc_id = aws_vpc.demo-vpc.id

      route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.demo-igw.id
      }  
}

# associate CRT and Subnet which requires internet access
resource "aws_route_table_association" "demo-crtba" {
  subnet_id = aws_subnet.demo-subnet-public-1.id
  route_table_id = aws_route_table.demo-ctm-rtb.id
}

resource "aws_security_group" "demo-ssh-http-allowed" {
  vpc_id = aws_vpc.demo-vpc.id

  egress {
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }
}
