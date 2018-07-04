#resource "aws_alb" "mindlevel" {
#    idle_timeout    = 60
#    internal        = false
#    name            = "mindlevel"
#    security_groups = ["sg-e4f4cb8f", "sg-7fbe1415"]
#    subnets         = ["${aws_subnet.subnet-1a.id}","${aws_subnet.subnet-1c.id}"]
#
#    enable_deletion_protection = false
#
#    tags {
#    }
#}
