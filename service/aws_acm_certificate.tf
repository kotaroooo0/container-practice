resource "aws_acm_certificate" "kotaroooo0" {
    domain_name = data.aws_route53_zone.kotaroooo0.name
    validation_method = "DNS"
}
