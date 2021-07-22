# Public subnets
resource "aws_subnet" "main-public" {
  count                   = length(var.public_subnets_cidr)
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnets_cidr[count.index]
  map_public_ip_on_launch = true
  availability_zone       = var.azs[count.index]

  tags = {
    Name = "${var.prefix_name}-public-${count.index}"
  }
}

# Internet GW
resource "aws_internet_gateway" "main-gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.prefix_name}"
  }
}

# Public route tables
resource "aws_route_table" "main-public" {
  vpc_id = aws_vpc.main.id
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main-gw.id
  }

  tags = {
    Name = "${var.prefix_name}-public"
  }
}

# Route associations public
resource "aws_route_table_association" "main-public" {
  count          = length(var.public_subnets_cidr)
  subnet_id      = aws_subnet.main-public[count.index].id
  route_table_id = aws_route_table.main-public.id
}
