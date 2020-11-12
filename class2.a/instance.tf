resource "aws_instance" "Ubuntu" {
  ami                         = "ami-0739f8cdb239fe9ae"
  instance_type               = "t2.micro"
  associate_public_ip_address = "true"
  key_name                    = "${aws_key_pair.Bastion-key.key_name}"
  user_data                   = "${file("userdata_file.sh")}"
  vpc_security_group_ids      = ["${aws_security_group.homeworkSG.id}"]
  availability_zone           = "us-east-1a"

  tags = {
    Name        = "Ubuntu"
    Environment = "Dev"
  }
}
