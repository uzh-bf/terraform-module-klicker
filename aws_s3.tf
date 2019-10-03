resource "aws_s3_bucket" "klicker_dev" {
  bucket = "${var.aws_s3_bucket_base}-dev"
  acl    = "private"

  cors_rule {
    allowed_headers = [
      "*",
    ]
    allowed_methods = [
      "GET",
    ]
    allowed_origins = [
      "*",
    ]
    expose_headers  = []
    max_age_seconds = 3000
  }
  cors_rule {
    allowed_headers = [
      "*",
    ]
    allowed_methods = [
      "PUT",
    ]
    allowed_origins = [
      "http://localhost:3000",
    ]
    expose_headers  = []
    max_age_seconds = 3000
  }
}

resource "aws_s3_bucket" "klicker_stage" {
  bucket = "${var.aws_s3_bucket_base}-stage"
  acl    = "private"

  cors_rule {
    allowed_headers = [
      "*",
    ]
    allowed_methods = [
      "GET",
    ]
    allowed_origins = [
      "*",
    ]
    expose_headers  = []
    max_age_seconds = 3000
  }
  cors_rule {
    allowed_headers = [
      "*",
    ]
    allowed_methods = [
      "PUT",
    ]
    allowed_origins = [
      "https://klicker-react-stage.zh.shift.switchengines.ch",
    ]
    expose_headers  = []
    max_age_seconds = 3000
  }
}

resource "aws_s3_bucket" "klicker_prod" {
  bucket = "${var.aws_s3_bucket_base}-prod"
  acl    = "private"

  cors_rule {
    allowed_headers = [
      "*",
    ]
    allowed_methods = [
      "GET",
    ]
    allowed_origins = [
      "https://app.klicker.uzh.ch",
    ]
    expose_headers  = []
    max_age_seconds = 3000
  }
  cors_rule {
    allowed_headers = [
      "*",
    ]
    allowed_methods = [
      "PUT",
    ]
    allowed_origins = [
      "https://app.klicker.uzh.ch",
    ]
    expose_headers  = []
    max_age_seconds = 3000
  }
}
