
sudo apt-get update
sudo apt-get upgrade

# instalamos GIT
sudo apt-get install -y git



# Install python3 and dependencies for Odoo 11
sudo apt-get install libxslt1-dev \
 libevent-dev libsasl2-dev libldap2-dev libpq-dev \
 libpng-dev libjpeg-dev

sudo apt-get -y install gcc python3 python3-pip python-pip
sudo pip3 install vobject qrcode num2words setuptools
# FIX issue WKHtmltopdf futur
sudo apt-get install libxrender1

# Install nodejs and less
sudo apt-get install -y npm node-less
sudo ln -s /usr/bin/nodejs /usr/bin/node



sudo apt-get install postgresql -y
sudo su - postgres -c "createuser -s $USER"



sudo mkdir /opt/odoo11
sudo mkdir /opt/odoo11/extra-addons
sudo chown -R $USER:root /opt/odoo11
Descargar Odoo 11 desde Github



# Download Odoo from git source
cd /opt/odoo11
git clone https://github.com/odoo/odoo.git -b 11.0 --depth 10



sudo pip3 install -r /opt/odoo11/odoo/requirements.txt


$> /opt/odoo11/odoo/odoo-bin

