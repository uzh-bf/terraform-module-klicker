resource "aws_iam_policy" "klicker_dev_policy" {
  name        = "klicker_dev_s3_access"
  description = "Allow klicker-dev to access the klicker-dev bucket."

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:ListAllMyBuckets",
        "s3:HeadBucket"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": "s3:*",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::${var.aws_s3_bucket_base}-dev",
        "arn:aws:s3:::${var.aws_s3_bucket_base}-dev/*"
      ]
    }
  ]
}
EOF
}

resource "aws_iam_policy" "klicker_stage_policy" {
  name        = "klicker_stage_s3_access"
  description = "Allow klicker-stage to access the klicker-stage bucket."

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:ListAllMyBuckets",
        "s3:HeadBucket"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": "s3:*",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::${var.aws_s3_bucket_base}-stage",
        "arn:aws:s3:::${var.aws_s3_bucket_base}-stage/*"
      ]
    }
  ]
}
EOF
}

resource "aws_iam_policy" "klicker_prod_policy" {
  name        = "klicker_prod_s3_access"
  description = "Allow klicker-prod to access the klicker-prod bucket."

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:ListAllMyBuckets",
        "s3:HeadBucket"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": "s3:*",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::${var.aws_s3_bucket_base}-prod",
        "arn:aws:s3:::${var.aws_s3_bucket_base}-prod/*"
      ]
    }
  ]
}
EOF
}
