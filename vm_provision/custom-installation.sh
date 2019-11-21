
# AHMAD

# https://www.vagrantup.com/docs/provisioning/shell.html#inline-scripts
# 
# Anything custom you want to install goes here.
# Examples below from the cms script



# apt-get install zip
# apt-get install unzip
# cd /vagrant/vm_provision
# unzip -o  taft_baywinds.sql.zip
#
# cd /vagrant/files
# unzip -o  4front.zip
#
# echo "CREATING DATABASE"
# cd /vagrant
#
#
# echo "CREATING implementation_manager.sql DATABASE"
#
# cat vm_provision/implementation_manager.sql | mysql -u root -proot
#
# echo "CREATING taft_base.sql DATABASE"
#
# cat vm_provision/taft_base.sql | mysql -u root -proot
#
# echo "CREATING taft_baywinds.sql DATABASE"
#
# cat vm_provision/taft_baywinds.sql | mysql -u root -proot
#
# RED='\033[0;33m'
# NC='\033[0m' # No Color
# printf "${RED}*****  CMS READY----------------- http://10.0.0.10/ \n"
