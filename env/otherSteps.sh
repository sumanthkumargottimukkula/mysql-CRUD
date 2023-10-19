#!/usr/bin/env bash

sudo cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf_backup
sudo cp /etc/php/8.1/fpm/php.ini /etc/php/8.1/fpm/php_backup.ini
sudo cp /etc/php/8.1/cli/php.ini /etc/php/8.1/cli/php_backup.ini

sudo cp /home/vagrant/default /etc/nginx/sites-available/default
sudo sed -i 's/sendfile on/sendfile off/' /etc/nginx/nginx.conf
sudo sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/' /etc/php/8.1/fpm/php.ini
sudo sed -i 's/sendfile on/sendfile off/g' /etc/nginx/nginx.conf
sudo sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /etc/php/8.1/fpm/php.ini


sudo service nginx restart
sudo service php8.1-fpm restart