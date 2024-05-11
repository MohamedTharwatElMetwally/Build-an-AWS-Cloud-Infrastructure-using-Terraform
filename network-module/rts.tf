
# ======= Creating Route table for Public Subnets
resource "aws_route_table" "rt_public" {
  vpc_id = aws_vpc.my-vpc.id

  # route {   # can be created as a separate resource.
  #   cidr_block = "0.0.0.0/0"
  #   gateway_id = aws_internet_gateway.IGW.id
  # }

  tags = {
    Name = "rt_public"
  }
}

resource "aws_route" "public_route" {
  route_table_id            = aws_route_table.rt_public.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id                = aws_internet_gateway.IGW.id
}

resource "aws_route_table_association" "rt_associate_public" {
  for_each = { for idx, subnet in aws_subnet.subnets : idx => subnet if subnet.tags["Type"] == "public" }
  subnet_id      = each.value.id
  route_table_id = aws_route_table.rt_public.id
}


# ======= Creating Route table for Private Subnets
resource "aws_route_table" "rt_private" {
  vpc_id = aws_vpc.my-vpc.id
  tags = {
    Name = "rt_private"
  }
}

resource "aws_route_table_association" "rt_associate_private" {
  for_each = { for idx, subnet in aws_subnet.subnets : idx => subnet if subnet.tags["Type"] == "private" }
  subnet_id      = each.value.id
  route_table_id = aws_route_table.rt_private.id
}