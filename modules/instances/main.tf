data "aws_ami" "amazon_linux" {
    most_recent = true
    owners      = ["amazon"]

    filter {
        name   = "name"
        values = ["amzn2-ami-hvm-*-x86_64-gp2"]
    }
}

resource "aws_instance" "instance_uc18" {
    for_each = {for i, val in var.subnets_id: i => val}
    ami = data.aws_ami.amazon_linux.id
    instance_type = var.instance_type
    subnet_id = each.value
    vpc_security_group_ids = [ aws_security_group.sg_uc18.id ]

    tags = {
        Name = var.instance_name
    }
}