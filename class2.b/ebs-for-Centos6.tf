resource "aws_ebs_volume" "ForTask2" {
  availability_zone = "us-east-1a"
  size              = 100
}

resource "aws_volume_attachment" "EBS" {
  device_name = "/dev/sdi"
  volume_id   = "${aws_ebs_volume.ForTask2.id}"
  instance_id = "${aws_instance.Centos6.id}"
}
