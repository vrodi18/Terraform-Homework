resource "aws_key_pair" "class" {
  key_name   = "nagios"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
