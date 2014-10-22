#Root starts this and keeps going forward

#install Apache Tomcat7
sudo apt-get install tomcat7 tomcat7-admin

#Install Git get custom bashrc with env
sudo apt-get install git

cd ~
git clone https://github.com/phoenixnebula/ubuntuutils.git 
cp ~/ubuntuutils/.bashrc ~/

iptables -t nat -I PREROUTING -p tcp --dport 80 -j REDIRECT --to-ports 8080
iptables -t nat -I OUTPUT -p tcp --dport 80 -j REDIRECT --to-ports 8080
iptables-save > /etc/iptables.rules

mkdir /home/jenkins 
