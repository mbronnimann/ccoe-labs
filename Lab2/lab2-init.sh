#!/bin/bash

yum -y install httpd

EC2NAME=`curl http://169.254.169.254/latest/meta-data/hostname`

echo "
<html>
<head><title>Lab 02</title></head>
<body>
  My hostname is $EC2NAME
</body>
</html> 
" > /var/www/html/index.html

chkconfig httpd on
service httpd start
