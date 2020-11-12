# terraform-homework# Terraform-Homework

## Create ec2 instance with the following tags

tags = {
    Name        = "Ubuntu"
    Environment = "Dev"
  }
  
Ec2 instance should utilize your ssh key from bastion host. It should also use ubuntu 16.04. Install apache2 in ec2 instance. Route53 record for www should be created for it's IP address by terraform. 

Ec2 instance should show as an output following attributes: 

	1. public IP 
	
	2. dns
	
	3. keyname
	
	4. az 
	
Above instance should have a sec group that allows ports:

	1. 22
	
	2. 443
	
	3. 80
	
	4. telnet
	
	5. mail
