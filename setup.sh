#change ubuntu sources to chinese(163, guangdong) server
sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup
sudo cp sources.list /etc/apt/

#update apt-get
sudo apt-get update && sudo apt-get upgrade -y

#https://github.com/huacnlee/init.d.git
cd ~/
git clone https://github.com/huacnlee/init.d.git

# go into the folder to run ./install_rvm
cd init.d
./install_packages
./install_rvm

cd ~/

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

rvm install 1.9.3
rvm gemset create rails3.2
rvm --default use 1.9.3@rails3.2
gem install rails -v='3.2.14' --no-rdoc --no-ri # dont install doc to save time...

#install node js
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get update -y
sudo apt-get install nodejs
