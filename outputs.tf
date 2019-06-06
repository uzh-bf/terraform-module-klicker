output "klicker_dev_access_key" {
  value = "${aws_iam_access_key.klicker_dev_user_credentials.id}"
}

output "klicker_dev_secret_key" {
  value = "${aws_iam_access_key.klicker_dev_user_credentials.secret}"
}

output "klicker_stage_access_key" {
  value = "${aws_iam_access_key.klicker_stage_user_credentials.id}"
}

output "klicker_stage_secret_key" {
  value = "${aws_iam_access_key.klicker_stage_user_credentials.secret}"
}

output "klicker_prod_access_key" {
  value = "${aws_iam_access_key.klicker_prod_user_credentials.id}"
}

output "klicker_prod_secret_key" {
  value = "${aws_iam_access_key.klicker_prod_user_credentials.secret}"
}
