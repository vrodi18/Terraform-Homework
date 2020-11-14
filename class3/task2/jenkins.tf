resource "aws_instance" "JenkinsServer" {
  ami                    = "${data.aws_ami.centos.id}"
  instance_type          = "t2.medium"
  vpc_security_group_ids = ["${aws_security_group.JenkinsSG.id}"]
  key_name               = "${aws_key_pair.class.key_name}"

  tags = {
    Name = "Jenkins_server"
  }
}

resource "null_resource" "remote" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "centos"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.JenkinsServer.public_ip}"
    }

    inline = [
      "sudo yum install wget -y",
      "wget http://mirrors.jenkins-ci.org/redhat/jenkins-2.266-1.1.noarch.rpm",
      "sudo yum localinstall jenkins-2.266-1.1.noarch.rpm -y",
      "sudo yum upgrade -y",
      "sudo yum install jenkins -y",
      "sudo yum install java-1.8.0-openjdk-devel -y",
      "sudo systemctl start jenkins",
      "sudo systemctl enable jenkins",
    ]
  }
}

# resource "null_resource" "remote" {      #use commented Install. The reason we used above method is atm Jenkins servers are down
#   triggers = {
#     always_run = "${timestamp()}"
#   }


#   provisioner "remote-exec" {
#     connection {
#       type        = "ssh"
#       user        = "centos"
#       private_key = "${file("~/.ssh/id_rsa")}"
#       host        = "${aws_instance.JenkinsServer.public_ip}"
#     }


#     inline = [
#       "sudo yum install wget -y",
#       "sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo",
#       "sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key",
#       "sudo yum upgrade -y",
#       "sudo yum install jenkins java-1.8.0-openjdk-devel -y",
#       "sudo systemctl start jenkins",
#       "sudo systemctl enable jenkins",
#     ]
#   }
# }

