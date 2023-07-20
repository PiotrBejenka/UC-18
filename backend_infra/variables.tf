variable "aws_region" {
    type     = string
    default  = "us-east-1"
}

variable "bucket_name" {
    type     = string
    default  = "remote-backend-uc18"
}

variable "sse_alg" {
    type     = string
    default  = "AES256"
}

variable "table_name" {
    type     = string
    default  = "state-lock-uc18"
}