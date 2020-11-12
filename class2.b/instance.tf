resource "aws_instance" "Centos6" {
  ami                         = "ami-e3fdd999"
  iam_instance_profile        = "${aws_iam_instance_profile.profile.name}"
  key_name                    = "Bastion-key"
  instance_type               = "t2.micro"
  associate_public_ip_address = "true"
  availability_zone           = "us-east-1a"

  tags = {
    Name        = "Centos6"
    Environment = "Dev"
  }
}
