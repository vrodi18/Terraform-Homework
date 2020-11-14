output "CENTOS_AMI" {
  value = "${data.aws_ami.centos.id}"
}

output "Instance_type" {
  value = "${aws_instance.NagiosXIServer.instance_type}"
}

output "EBS_volume_size" {
  value = "${aws_instance.NagiosXIServer.root_block_device.0.volume_size}"
}

output "Nagios_Server_IP" {
  value = "${aws_instance.NagiosXIServer.public_ip}"
}
