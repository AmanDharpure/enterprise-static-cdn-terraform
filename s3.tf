#########################################
# S3 Assets Bucket
#########################################

resource "aws_s3_bucket" "assets" {
  bucket = "${var.project_name}-assets-aman"

  tags = {
    Name = "Assets Bucket"
  }
}

resource "aws_s3_bucket_versioning" "assets_versioning" {
  bucket = aws_s3_bucket.assets.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "assets_encryption" {
  bucket = aws_s3_bucket.assets.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "assets_block" {
  bucket = aws_s3_bucket.assets.id

  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}
resource "aws_s3_object" "index_html" {
  bucket       = aws_s3_bucket.assets.id
  key          = "index.html"
  source       = "${path.module}/website/index.html"
  content_type = "text/html"
  etag         = filemd5("${path.module}/website/index.html")
}

resource "aws_s3_object" "style_css" {
  bucket       = aws_s3_bucket.assets.id
  key          = "style.css"
  source       = "${path.module}/website/style.css"
  content_type = "text/css"
  etag         = filemd5("${path.module}/website/style.css")
}