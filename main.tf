resource "aws_eip" "eip" {
  count = "${var.create_vpc && var.eip ? var.count : 0}"
  vpc   = true

  tags {
    Name = "${var.env}-eip-0${count.index + 1}"
  }
}
