#!/bin/bash
sudo yum -y update
sudo yum -y install httpd
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
sudo chgrp -R ec2-user /var/www
sudo chmod -R g+rw /var/www
