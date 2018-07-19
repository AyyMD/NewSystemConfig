wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get -y install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get -y update
sudo apt-get -y install sublime-text

sudo add-apt-repository -y 'deb https://dl.bintray.com/resin-io/debian stable etcher'
sudo apt-key -y adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 379CE192D401AB61
sudo apt -y update && sudo apt -y install etcher-electron


sudo apt-get update -y
sudo apt-get -y install git-core
git config --global user.name "AyyMD"
git config --global user.email "wflemmin@asu.edu"
git config --global color.ui auto

cd ~/Downloads 
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i ~/Downloads/discord.deb
rm discord.deb

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update 
sudo apt-get install google-chrome-stable

