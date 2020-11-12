#!/bin/bash 
sudo apt  update
sudo apt  install apache2 -y
sudo systemctl start apache2.service
sudo systemctl enable apache2.service
sudo apt install  telnet -y
