#!/usr/bin/bash
sudo yum update -y
sudo yum groupinstall 'Development Tools' -y
sudo yum install httpd -y
sudo mkdir /wcode
cd /wcode
sudo git clone --branch seppala https://github.com/harteratchapman/cpsc298-cloud-literacy.git
sudo service httpd start
sudo chkconfig httpd on
cd /wcode/cpsc298-cloud-literacy/renderer/raytrace
sudo ./build
sudo ./raytrace test
sudo cp box.png /var/www/html/myshape.png
sudo cp /wcode/cpsc298-cloud-literacy/index/index.html /var/www/html