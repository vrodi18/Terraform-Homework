resource "aws_iam_group_membership" "Developer_team" {
  name = "Developer-group-membership"

  users = [
    "${aws_iam_user.tim.name}",
    "${aws_iam_user.bob.name}",
    "${aws_iam_user.ben.name}",
  ]

  group = "${aws_iam_group.Developer.name}"
}
