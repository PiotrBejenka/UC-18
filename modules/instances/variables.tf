variable "instance_type" {
    type     = string
    default  = "t2.micro"
}

variable "instance_name" {
    type        = string
    default     = "GenAI_instance_uc18"
}

variable "sg_name" {
    type        = string
    default     = "GenAI_sg_uc18"
}

variable "subnets_id" {
    type = list(string)
}

variable "vpc_id" {
    type = string
}