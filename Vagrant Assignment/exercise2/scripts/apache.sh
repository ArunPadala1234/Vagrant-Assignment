yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop

rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start


#download starter content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/vinaysriramn/vagrant-demo/main/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/vinaysriramn/vagrant-demo/main/files/info.php
service httpd restart

