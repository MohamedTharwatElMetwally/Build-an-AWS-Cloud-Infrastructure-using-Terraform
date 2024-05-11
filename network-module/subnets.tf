
resource "aws_subnet" "subnets" {
  for_each          = { for subnet in var.subnets_details : subnet.name => subnet }
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = each.value.cidr
  availability_zone = each.value.availability_zone
  tags = {
    Name = "${var.vpc_name}_${each.value.name}_subnet"
    Type = "${each.value.type}"
  }
}


