clear
# CD to Repo
if [ ! `dirname $0` = '.' ]
then
	cd `dirname $0`
fi

export NVM_DIR=$HOME/.nvm;
source $HOME/.nvm/nvm.sh;

node --version
nvm install 11.12.0
nvm use 11.12.0
node --version

# Ask user for installation
cmd=(dialog --separate-output --checklist "Select options:" 22 76 16)
options=(1 "MorNetwork" on
         2 "MorTeam" off
         3 "MorScout" off
         4 "MorParts" off)
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
clear
for choice in $choices
do
	case $choice in
		1)
			if [[ ! -d 'MorServer/mornetwork' ]];
			then
				git clone https://github.com/mortorqrobotics/mornetwork.git MorServer/mornetwork
			fi
			cd MorServer/mornetwork
			git pull
			npm install
			cd ../..
			;;
		2)
			if [[ ! -d 'MorServer/morteam-server' ]];
			then
				git clone https://github.com/mortorqrobotics/morteam-server.git MorServer/morteam-server
			fi
			cd MorServer/morteam-server
			git pull
			npm install
			cd ..
			if [[ ! -d 'morteam-web' ]];
			then
				git clone https://github.com/mortorqrobotics/morteam-web.git
			fi
			cd morteam-web
			git pull
			npm install
			npm run build
			cd ../..
			;;
		3)
			if [[ ! -d 'MorServer/morscout-server' ]];
			then
				git clone https://github.com/mortorqrobotics/morscout-server.git MorServer/morscout-server
			fi
			cd MorServer/morscout-server
			git pull
			npm install
			cd ../..
			if [[ ! -d 'MorServer/morscout-web' ]];
			then
				git clone https://github.com/mortorqrobotics/morscout-web.git MorServer/morscout-web
			fi
			;;
		4)
			if [[ ! -d 'MorServer/morparts-server-website' ]];
			then
				git clone https://github.com/mortorqrobotics/morparts-server-website.git MorServer/morparts-server-website
			fi
			cd MorServer/morparts-server-website
			git pull
			npm install
			npm run build
			cd ../..
			;;
	esac
done
