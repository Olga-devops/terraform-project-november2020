resource "aws_eip" "nat" {
    count = "${var.num_nat_gateways}"
    vpc = true
    depends_on = ["aws_internet_gateway.main"]
}

resource "aws_nat_gateway" "nat" {
    count = "${var.num_nat_gateways}"
    allocation_id = "${element(aws_eip.nat.*.id, count.index)}"
    subnet_id = "${element(aws_subnet.public.*.id, count.index)}"
    depends_on = ["aws_internet_gateway.main"]
}