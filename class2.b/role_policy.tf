resource "aws_iam_role_policy" "policy" {
  name = "Admin_policy"
  role = "${aws_iam_role.Centos_role.id}"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
EOF
}
