#!/usr/bin/bash
# Return server to the check point
# - Apache
# - Mysql
# - Start Services
# Root checking to install Apache, Mysql and dependences
if [ "$EUID" -ne 0 ]
then echo "Please run as root"
exit
fi
# Updating source lists
apt update
# Starting services
systemctl start ssh 2> ssh.log
# Installing services and dependences in one line
sudo echo "Setting apache version... "; sudo echo ""; APACHE="apache2"; sudo echo "Setting mysql... "; sudo echo ""; MYSQL="mysql-server"; sudo echo "Installing $APACHE... "; sudo echo ""; sudo apt -y install $APACHE 2> error.log; sudo echo "Searching $MYSQL... "; sudo echo ""; sudo apt-cache search $MYSQL; sudo echo "Installing MYSQL... "; sudo echo ""; sudo apt -y install $MYSQL 2> error_sql.log; sudo echo "Setting MYSQL... "; sudo echo ""; sudo apt-cache search $MYSQL; sudo echo "PATH=PATH:mysql" > /etc/environment; sudo echo "PATH=PATH:mysql" >> /etc/bash.bashrc; sudo echo "Installing dependences... "; sudo echo ""; sudo apt -y install gdm3; sudo echo "Installing graphics... "; sudo echo ""; sudo apt -y install xorg; sudo echo "Installing VM-tools... "; sudo echo ""; sudo apt -y install open-vm-tools open-vm-tools-desktop; sudo echo "Build essentials tools... "; sudo echo ""; sudo apt -y install build-essential gcc; sudo echo "Ready"; sudo echo ""
# Starting apache2 
sudo systemctl start ssh 2> /dev/null 
sudo systemctl start mysql 2> /dev/null 
# Cleaning logs
rm *.log 2> /dev/null 
# Finishing
sudo echo "Installation completed"
sudo echo "Restart the PC to end the task"
# Rebooting systemc
sudo reboot