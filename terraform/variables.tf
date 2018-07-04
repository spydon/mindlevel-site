variable "root_domain_name" {
  default = "mindlevel.net"
}

variable "www_domain_name" {
  default = "www.mindlevel.net"
}

variable "price_class" {
  default = "PriceClass_100"
}

# Used to be able to share zone between terraform setups
variable "hosted_zone_id" {
  default = "Z31YY064WFVPVT"
}

variable "certificate_arn" {
  default = "arn:aws:acm:us-east-1:589361660625:certificate/c99cadd2-ad12-4e97-bae3-07bbdddceedb"
}
