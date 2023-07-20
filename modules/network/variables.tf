variable "vpc_cidr" {
    type    = string
    default = "10.0.0.0/16"
}

variable "vpc_name" {
    type    = string
    default = "GenAI_vpc_uc18"
}

variable "subnets" {
    default     = {
        "GenAI_private_subnet_uc18" = "10.0.10.0/24"
        "GenAI_public_subnet_uc18" = "10.0.20.0/24"
    }
}

variable "pub_subnet" {
    type    = string
    default     = "GenAI_public_subnet_uc18"
}

variable "priv_subnet" {
    type    = string
    default     = "GenAI_private_subnet_uc18"
}

variable "az" {
    type = string
    default = "us-east-1a"
}

variable "igw_name" {
    type    = string
    default = "GenAI_igw_uc18"
}

variable "nat_name" {
    type    = string
    default = "GenAI_nat_uc18"
}

variable "pub_rt_name" {
    type    = string
    default = "GenAI_pub_rt_uc18"
}

variable "priv_rt_name" {
    type    = string
    default = "GenAI_pub_rt_uc18"
}

variable "cidr_all" {
    type    = string
    default = "0.0.0.0/0" 
}