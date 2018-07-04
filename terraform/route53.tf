#
# The records for the root domain
#

resource "aws_route53_record" "mindlevel-net-A" {
    zone_id = "${var.hosted_zone_id}"
    name    = "${var.root_domain_name}"
    type    = "A"

    alias {
        name    = "${aws_cloudfront_distribution.mindlevel_cdn.domain_name}"
        zone_id = "${aws_cloudfront_distribution.mindlevel_cdn.hosted_zone_id}"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "mindlevel-net-AAAA" {
    zone_id = "${var.hosted_zone_id}"
    name    = "${var.root_domain_name}"
    type    = "AAAA"

    alias {
        name    = "${aws_cloudfront_distribution.mindlevel_cdn.domain_name}"
        zone_id = "${aws_cloudfront_distribution.mindlevel_cdn.hosted_zone_id}"
        evaluate_target_health = false
    }
}

#
# The records for the www subdomain
#

resource "aws_route53_record" "www-mindlevel-net-A" {
    zone_id = "${var.hosted_zone_id}"
    name    = "${var.www_domain_name}"
    type    = "A"

    alias {
        name    = "${aws_cloudfront_distribution.www_mindlevel_cdn.domain_name}"
        zone_id = "${aws_cloudfront_distribution.www_mindlevel_cdn.hosted_zone_id}"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "www-mindlevel-net-AAAA" {
    zone_id = "${var.hosted_zone_id}"
    name    = "${var.www_domain_name}"
    type    = "AAAA"

    alias {
        name    = "${aws_cloudfront_distribution.www_mindlevel_cdn.domain_name}"
        zone_id = "${aws_cloudfront_distribution.www_mindlevel_cdn.hosted_zone_id}"
        evaluate_target_health = false
    }
}

#
# Nameservers etc
#

resource "aws_route53_record" "mindlevel-net-NS-0" {
    zone_id = "${var.hosted_zone_id}"
    name    = "mindlevel.net"
    type    = "NS"
    records = ["ns-94.awsdns-11.com.", "ns-1416.awsdns-49.org.", "ns-693.awsdns-22.net.", "ns-1648.awsdns-14.co.uk."]
    ttl     = "900"
}

resource "aws_route53_record" "mindlevel-net-SOA-0" {
    zone_id = "${var.hosted_zone_id}"
    name    = "mindlevel.net"
    type    = "SOA"
    records = ["ns-1648.awsdns-14.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"
}
