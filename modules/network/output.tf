output "subnets_id" {
    description = "IDs of created subnets"
    value = values(aws_subnet.subnets_uc18)[*].id
}

output "vpc_id" {
    description = "ID of created vpc"
    value = aws_vpc.vpc_uc18.id
}