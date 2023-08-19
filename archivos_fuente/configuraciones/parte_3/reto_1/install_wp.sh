#/bin/bash
sudo apt update
sudo apt -y install mariadb-server
#sudo mysql_secure_installation

sudo mysql
GRANT ALL ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;
FLUSH PRIVILEGES;
GRANT ALL ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;

sudo systemctl status mariadb
sudo mysqladmin version
mysqladmin -u admin -p version


# ==============================

sudo mariadb
CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL ON wordpress.* TO 'wordpress_user'@'localhost' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;
EXIT;


# ==================================

sudo apt update
sudo apt install php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip
sudo systemctl restart apache2


sudo a2enmod rewrite
sudo a2enmod php
sudo apache2ctl configtest
sudo systemctl restart apache2


sudo apt install curl
cd /tmp
    curl -O https://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz

touch /tmp/wordpress/.htaccess
cp /tmp/wordpress/wp-config-sample.php /tmp/wordpress/wp-config.php
mkdir /tmp/wordpress/wp-content/upgrade

sudo cp -a /tmp/wordpress/. /var/www/html/

sudo chown -R www-data:www-data /var/www/wordpress
sudo systemctl restart apache2
sudo find /var/www/ -type d -exec chmod 750 {} \;
sudo find /var/www/ -type f -exec chmod 640 {} \;

curl -s https://api.wordpress.org/secret-key/1.1/salt/
