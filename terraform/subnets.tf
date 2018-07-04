resource "aws_subnet" "subnet-1a" {
    vpc_id                  = "${aws_vpc.site_vpc.id}"
    cidr_block              = "172.31.16.0/20"
    availability_zone       = "eu-central-1a"
    map_public_ip_on_launch = true

    tags {
    }
}

resource "aws_subnet" "subnet-1b" {
    vpc_id                  = "${aws_vpc.site_vpc.id}"
    cidr_block              = "172.31.32.0/20"
    availability_zone       = "eu-central-1b"
    map_public_ip_on_launch = true

    tags {
    }
}

resource "aws_subnet" "subnet-1c" {
    vpc_id                  = "${aws_vpc.site_vpc.id}"
    cidr_block              = "172.31.0.0/20"
    availability_zone       = "eu-central-1c"
    map_public_ip_on_launch = true

    tags {
    }
}
