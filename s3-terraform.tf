
resource "aws_s3_bucket" "S3bucket" {
    bucket = "s3-127632361263072321232-0"
    acl = "private"
}
resource "aws_s3_bucket_versioning" "version" {
    bucket = aws_s3_bucket.S3bucket.id
    versioning_configuration  {
        status = "Enabled"
    }
}



