#quick set up for a fresh ubuntu :)

email=$1
password=$2

sudo add-apt-repository -y ppa:chris-lea/node.js
sudo add-apt-repository -y ppa:webupd8team/sublime-text-2
sudo apt-get -y update

sudo apt-get install -y curl

sudo apt-get install -y git
sudo git config --global user.name "Darragh Hayes"
sudo git config --global user.email $email
ssh-keygen -t rsa -N $password -f ~/.ssh/id_test -C $email
sudo cat ~/.ssh/id_rsa.pub >> ~/public_key.txt

curl -sSL https://get.docker.com/ubuntu/ | sudo sh
sudo groupadd docker
sudo gpasswd -a $(whoami) docker
sudo service docker restart

sudo apt-get install -y unzip
sudo apt-get -y install nodejs
sudo apt-get install -y sublime-text
sudo apt-get install -y nautilus-open-terminal
sudo apt-get install -y terminator
nautilus -q

sudo apt-get install -y vlc

sudo apt-get install -y dpkg
sudo apt-get install -y libxss1 libappindicator1 libindicator7
sudo apt-get install -y chromium-browser

#udo apt-get dist-upgrade -y

sudo sed -i 's/gedit.desktop/sublime-text-2.desktop/g' /etc/gnome/defaults.list

echo "\nalias agi='sudo apt-get install'\nalias purge='sudo apt-get purge'\nalias update='sudo apt-get update'\nalias ..='cd ..'\nalias c='clear'" >> ~/.bashrc
echo "done :)"
