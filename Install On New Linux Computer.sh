answer='Y'
echo 'would you like to add Etcher? [Y/n]'
read answer 

if [ $answer = 'Y' ] || [ $answer = 'y' ]
then 
	sudo add-apr-repository 'deb https://dl.bintray.com/resin-io/debian stable etcher'
	sudo apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 379CE192D401AB61
	sudo apt update && sudo apt install etcher-electron
fi

answer='Y'
echo 'would you like to add Sublime Text? [Y/n]'
read answer 

if [ $answer = 'Y' ] || [ $answer = 'y' ]
then 
	get -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	sudo apt-get install apt-transport-https
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	sudo apt-get update
	sudo apt-get install sublime-text
fi

answer='Y'
echo 'would you like to add Gnome Twich? [Y/n]'
read answer 

if [ $answer = 'Y' ] || [ $answer = 'y' ]
then 
	sudo add-apt-repository ppa:samoilov-lex/gnome-twitch
	sudo apt update && sudo apt install gnome-twitch
fi