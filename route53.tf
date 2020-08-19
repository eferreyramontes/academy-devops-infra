resource "aws_route53_zone" "primary" {
  name = "and-academy.com"
}

resource "aws_route53_record" "cname_route53_record" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "and-academy.com"
  type    = "CNAME"
  ttl     = "60"
  records = [aws_alb.main.dns_name]
}