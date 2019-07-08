resource "aws_route53_record" "klicker_dev" {
  zone_id = "${var.aws_route53_zone}"
  name    = "klicker-dev.${var.base_domain}"
  type    = "A"

  alias {
    name                   = "${var.aws_route53_record_lb_name}"
    zone_id                = "${var.aws_route53_zone}"
    evaluate_target_health = false
  }
}
