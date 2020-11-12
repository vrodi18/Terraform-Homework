resource "aws_iam_group_membership" "Management_team" {
  name = "Management-group-membership"

  users = [
    "${aws_iam_user.ben.name}",
  ]

  group = "${aws_iam_group.Management.name}"
}
