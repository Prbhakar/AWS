
resource "aws_vpc" "demo-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "tf-demo"
  }
}

resource "aws_subnet" "demo-subnet-public-1" {
    vpc_id = aws_vpc.demo-vpc.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "ap-south-1a"


}

resource "aws_subnet" "demo-subnet-private-1" {
    vpc_id = aws_vpc.demo-vpc.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "ap-south-1b"


}

