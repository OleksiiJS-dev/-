sudo su 
#APACHE
sudo apt-get install apache2 php7.0
echo    '<VirtualHost *:80>
        ServerAdmin webmaster@localhost
        ServerName http://lamborghini-aventador.pp.ua/
        DocumentRoot /var/www/html
        ProxyPass / http://localhost:3000/
        ProxyPassReverse / http://localhost:3000/
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
        </VirtualHost>
        ' | sudo tee /etc/apache2/sites-available/000-default.conf 
sudo a2enmod proxy
sudo a2enmod proxy_http
sudo systemctl restart apache2
#GIT APLICA
#   github link to project
# git clone https://github.com/OleksiiJS-dev/LUNIX_DEBIAN11.git
# bash LUNIX_DEBIAN11/DEBIAN.sh
sudo apt-get install npm
npm install -g pm2