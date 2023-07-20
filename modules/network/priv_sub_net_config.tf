resource "aws_eip" "eip_uc18" {
    domain = "vpc" 
}

resource "aws_nat_gateway" "nat_uc18" {
    allocation_id = aws_eip.eip_uc18.id
    subnet_id = aws_subnet.subnets_uc18[var.pub_subnet].id
    depends_on = [ aws_internet_gateway.igw_uc18 ]

    tags = {
        Name = var.nat_name
    }
}

resource "aws_route_table" "private_rt_uc18" {
    vpc_id = aws_vpc.vpc_uc18.id
    
    route {
        cidr_block = var.cidr_all
        nat_gateway_id = aws_nat_gateway.nat_uc18.id
    }

    tags = {
        Name = var.priv_rt_name
    }
}

resource "aws_route_table_association" "prive_rt_association" {
    subnet_id = aws_subnet.subnets_uc18[var.priv_subnet].id
    route_table_id = aws_route_table.private_rt_uc18.id  
}