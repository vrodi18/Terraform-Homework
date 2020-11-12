resource "aws_iam_instance_profile" "profile" {
  name = "profile"
  role = "${aws_iam_role.Centos_role.name}"
}
