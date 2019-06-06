resource "aws_iam_user" "klicker_dev_user" {
  name = "klicker-dev"
}

resource "aws_iam_user" "klicker_stage_user" {
  name = "klicker-stage"
}

resource "aws_iam_user" "klicker_prod_user" {
  name = "klicker-prod"
}

resource "aws_iam_access_key" "klicker_dev_user_credentials" {
  user = "${aws_iam_user.klicker_dev_user.name}"
}

resource "aws_iam_access_key" "klicker_stage_user_credentials" {
  user = "${aws_iam_user.klicker_stage_user.name}"
}

resource "aws_iam_access_key" "klicker_prod_user_credentials" {
  user = "${aws_iam_user.klicker_prod_user.name}"
}

resource "aws_iam_policy_attachment" "klicker_dev_policy_attachment" {
  name       = "klicker_dev_policy_attachment"
  policy_arn = "${aws_iam_policy.klicker_dev_policy.arn}"
  users      = ["${aws_iam_user.klicker_dev_user.name}"]
}

resource "aws_iam_policy_attachment" "klicker_stage_policy_attachment" {
  name       = "klicker_stage_policy_attachment"
  policy_arn = "${aws_iam_policy.klicker_stage_policy.arn}"
  users      = ["${aws_iam_user.klicker_stage_user.name}"]
}

resource "aws_iam_policy_attachment" "klicker_prod_policy_attachment" {
  name       = "klicker_prod_policy_attachment"
  policy_arn = "${aws_iam_policy.klicker_prod_policy.arn}"
  users      = ["${aws_iam_user.klicker_prod_user.name}"]
}
