resource "aws_internet_gateway" "igw_uc18" {
    vpc_id = aws_vpc.vpc_uc18.id

    tags = {
        Name = var.igw_name
    }
}

resource "aws_route_table" "public_rt_uc18" {
    vpc_id = aws_vpc.vpc_uc18.id
    
    route {
        cidr_block = var.cidr_all
        gateway_id = aws_internet_gateway.igw_uc18.id
    }

    tags = {
        Name = var.pub_rt_name
    }
}

resource "aws_route_table_association" "pub_rt_association" {
    subnet_id = aws_subnet.subnets_uc18[var.pub_subnet].id
    route_table_id = aws_route_table.public_rt_uc18.id  
}