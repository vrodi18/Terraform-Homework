output "Key_Name" {
  value = "${aws_key_pair.Bastion-key.key_name}"
}

output "AZ" {
  value = "${aws_instance.Ubuntu.availability_zone}"
}

output "PIP" {
  value = "${aws_instance.Ubuntu.public_ip}"
}

output "DNS" {
  value = "${aws_route53_record.www.name}"
}

