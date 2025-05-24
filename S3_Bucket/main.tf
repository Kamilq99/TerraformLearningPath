resource "aws_s3_bucket" "my_local_bucket" {
  bucket = "test.bucket"
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.my_local_bucket.id
  acl    = "private"
}