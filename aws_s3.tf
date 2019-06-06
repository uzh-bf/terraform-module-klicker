resource "aws_s3_bucket" "klicker_dev" {
  bucket = "${var.aws_s3_bucket_base}-dev"
  acl    = "private"
}

resource "aws_s3_bucket" "klicker_stage" {
  bucket = "${var.aws_s3_bucket_base}-stage"
  acl    = "private"
}

resource "aws_s3_bucket" "klicker_prod" {
  bucket = "${var.aws_s3_bucket_base}-prod"
  acl    = "private"
}
