resource "aws_eip" "eip" {
  count = "${var.create_vpc && var.eip ? var.count : 0}"
  vpc   = true

  tags = "${merge(map("Name", format("%s", var.name)), var.tags)}"
}
