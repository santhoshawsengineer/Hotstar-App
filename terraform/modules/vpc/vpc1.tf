resource "aws_vpc" "dockervpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "${var.tool}vpc"
  }
}

#internet gateway
resource "aws_internet_gateway" "igw-docker" {
  vpc_id = aws_vpc.dockervpc.id

  tags = {
    Name = "${var.tool}-igw"
  }
}

#public subnet
resource "aws_subnet" "dockerpubsub" {
  vpc_id     = aws_vpc.dockervpc.id
  cidr_block = "10.0.0.0/20"
  availability_zone       = "ap-southeast-1a"   # ✅ Specify your desired AZ
  map_public_ip_on_launch = true            # ✅ Optional: ensures instances get public IPs automatically


  tags = {
    Name = "${var.tool}pubsub"
  }
}


#route table
resource "aws_route_table" "dockerpubrt" {
  vpc_id = aws_vpc.dockervpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-docker.id
  }


  tags = {
    Name = "${var.tool}publicroutable"
  }
}

#subnetroutetable association
resource "aws_route_table_association" "dockerpubsubassociation" {
  subnet_id      = aws_subnet.dockerpubsub.id
  route_table_id = aws_route_table.dockerpubrt.id
}


#public subnet 2
resource "aws_subnet" "dockerpubsub2" {
  vpc_id     = aws_vpc.dockervpc.id
  cidr_block = "10.0.16.0/20"
  availability_zone       = "ap-southeast-1b"   # ✅ Specify your desired AZ
  map_public_ip_on_launch = true            # ✅ Optional: ensures instances get public IPs automatically

  tags = {
    Name = "${var.tool}pubsub"
  }
}


#route table
resource "aws_route_table" "dockerpubrt2" {
  vpc_id = aws_vpc.dockervpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-docker.id
  }


  tags = {
    Name = "${var.tool}publicroutable"
  }
}

#subnetroutetable association 2
resource "aws_route_table_association" "dockerpubsubassociation2" {
  subnet_id      = aws_subnet.dockerpubsub2.id
  route_table_id = aws_route_table.dockerpubrt2.id
}