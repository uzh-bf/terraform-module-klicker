variable base_domain {}

variable "aws_s3_bucket_base" {
  value = "klicker"
}

variable "aws_route53_zone" {}
variable "aws_route53_record_lb_name" {}
variable "aws_route53_record_lb_zone_id" {}
