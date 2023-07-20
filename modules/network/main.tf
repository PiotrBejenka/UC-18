resource "aws_vpc" "vpc_uc18" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "subnets_uc18" {
  for_each = var.subnets
  vpc_id = aws_vpc.vpc_uc18.id
  cidr_block = each.value
  availability_zone = var.az

  tags = {
    Name = each.key
  }
}