#!/bin/bash
# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

yum update -y
yum -y remove httpd
yum -y remove httpd-tools
yum install -y httpd24 php72 mysql57-server php72-mysqlnd
service httpd start
chkconfig httpd on

usermod -a -G apache ec2-user
chown -R ec2-user:apache /var/www
chmod 2775 /var/www
find /var/www -type d -exec chmod 2775 {} \;
find /var/www -type f -exec chmod 0664 {} \;
cd /var/www/html
echo "<b>This is a web page created from terraform</b>" > index.html
#curl http://169.254.169.254/latest/meta-data/instance-id -o index.html
#curl https://raw.githubusercontent.com/hashicorp/learn-terramino/master/index.php -O