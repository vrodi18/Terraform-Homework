data "aws_ami" "centos" {
  most_recent = true
  owners      = ["679593333241"]

  filter {
    name   = "state"
    values = ["available"]
  }

  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 HVM EBS *"]
  }
}

output "CENTOS_AMI" {
  value = "${data.aws_ami.centos.id}"
}

output "Jenkins URL" {
  value = "${aws_route53_record.www.name}"
}

output "Jenkins admin" {
  value = "vladmin"
}

output "Jenkins password" {
  value = "jenkins"
}