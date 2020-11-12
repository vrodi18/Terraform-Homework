resource "aws_key_pair" "Bastion-key" {
  key_name   = "Bastion-key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
