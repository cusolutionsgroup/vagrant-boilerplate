
#!/usr/bin/env bash

# Intended for Ubuntu 12.03 (Whatever)

# Update Ubuntu
apt-get update

# Adjust timezone to be Detroit
ln -sf /usr/share/zoneinfo/America/Detroit /etc/localtime

# Apache
echo "----- Provision: Installing apache..."
apt-get install -y apache2 apache2-utils


echo "----- Provision: Setup /var/www to point to /vagrant ..."
rm -rf /var/www
ln -fs /vagrant /var/www

# Apache / Virtual Host Setup
echo "----- Provision: Install Host File..."

cp /vagrant/vm_provision/hostfile /etc/apache2/sites-available/default

a2enmod rewrite

# Installing MySQL and it's dependencies, Also, setting up root password for MySQL as it will prompt to enter the password during installation
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password root'
sudo apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql


# Installing PHP and it's dependencies
sudo apt-get -y install php5 libapache2-mod-php5 php5-mcrypt

# Cleanup unneded packages
apt-get -y autoremove

# Restart Apache
echo "----- Provision: Restarting Apache..."
service apache2 restart

echo "----- Read : http://99.99.99.99/"
