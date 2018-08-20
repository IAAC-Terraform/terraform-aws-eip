output "eipalloc" {
  value = "${aws_eip.eip.*.id}"
}

output "eipprivateip" {
  value = "${aws_eip.eip.*.private_ip}"
}

output "eip" {
  value = "${aws_eip.eip.*.public_ip}"
}
