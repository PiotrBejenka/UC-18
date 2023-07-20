resource "aws_dynamodb_table" "remote_backend_table_uc18" {
    name           = var.table_name
    read_capacity  = 5
    write_capacity = 5
    hash_key       = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }

    tags = {
        Name = var.table_name
    }
}