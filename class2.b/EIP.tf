resource "aws_eip" "Elastic_IP" {
  instance = "${aws_instance.Centos6.id}"
  vpc      = true

  tags = {
    Name = "Centos6-EIP"
  }
}
