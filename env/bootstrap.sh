#!/usr/bin/env bash
sudo apt-get update

sudo apt-get install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update

#install required php8.1 packages
sudo apt-get install -y php8.1-cli php8.1-dev php8.1-curl php8.1-mysql php8.1-mbstring php8.1-fpm

#nginx
sudo apt-get -y install nginx

#mysql required in vagrant only
sudo apt upgrade
wget http://repo.mysql.com/mysql-apt-config_0.8.10-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.10-1_all.deb
sudo apt update
sudo apt install mysql-server