resource "aws_s3_bucket" "remote_backend_bucket_uc18" {
    bucket = var.bucket_name
    object_lock_enabled = true

    tags = {
        Name = var.bucket_name
    }
}

resource "aws_s3_bucket_versioning" "bucket_versioning_uc18" {
    bucket = aws_s3_bucket.remote_backend_bucket_uc18.id
    versioning_configuration {
        status = "Enabled"
    }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "bucket_encryption_uc18" {
    bucket = aws_s3_bucket.remote_backend_bucket_uc18.id
    rule {
        apply_server_side_encryption_by_default {
            sse_algorithm = var.sse_alg
        }
    }
}