output "Elastic_IP" {
  value = "${aws_eip.Elastic_IP.public_ip}"
}

output "EBS-Info" {
  value = "${aws_volume_attachment.EBS.device_name}"
}

output "Instance_Profile_Role" {
  value = "${aws_iam_instance_profile.profile.role}"
}

output "Policy Name" {
  value = "${aws_iam_role_policy.policy.name}"
}

output "Json Policy" {
  value = "${aws_iam_role_policy.policy.policy}"
}

output "EBS-Size" {
  value = "${aws_instance.Centos6.ebs_block_device.2514424016.volume_size}"
}
