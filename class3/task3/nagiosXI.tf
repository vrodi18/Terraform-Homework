resource "aws_instance" "NagiosXIServer" {
  ami                    = "${data.aws_ami.centos.id}"
  instance_type          = "t2.large"
  vpc_security_group_ids = ["${aws_security_group.NagiosXI_SG.id}"]
  key_name               = "${aws_key_pair.class.key_name}"

  root_block_device {
    volume_type           = "gp2"
    volume_size           = "30"
    delete_on_termination = "true"
  }

  tags = {
    Name = "Nagios_server"
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
      host        = "${aws_instance.NagiosXIServer.public_ip}"
    }

    inline = [
      "sudo curl https://assets.nagios.com/downloads/nagiosxi/install.sh | sudo sh",
    ]
  }
}
