data "aws_route53_zone" "kotaroooo0" {
    name = "kotaroooo0.org"
}

resource "aws_route53_record" "kotaroooo0" {
    zone_id = data.aws_route53_zone.kotaroooo0.zone_id
    name = data.aws_route53_zone.kotaroooo0.name
    type = "A"

    alias {
        name = aws_lb.lb.dns_name
        zone_id = aws_lb.lb.zone_id
        evaluate_target_health = true
    }
}
