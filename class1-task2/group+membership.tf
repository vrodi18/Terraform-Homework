resource "aws_iam_group" "Infosec" {
  name = "Infosec"
  path = "/"
}


resource "aws_iam_group_membership" "Infosec_team" {
  name = "Infosec-group-membership"

  users = [
    "${aws_iam_user.Sam.name}",
    "${aws_iam_user.Billy.name}",
    "${aws_iam_user.Ron.name}",
  ]

  group = "${aws_iam_group.Infosec.name}"
}
