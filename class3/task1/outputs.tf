output "r1soft Servers Ip" {
  value = "${aws_instance.r1soft-server.public_ip}"
}