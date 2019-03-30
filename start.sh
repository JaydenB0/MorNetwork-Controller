export NVM_DIR=$HOME/.nvm;
source $HOME/.nvm/nvm.sh;

node --version
nvm use 11.12.0
node --version


mongod &
node MorServer/mornetwork/server.js &
node MorServer/morscout-server/server.js &
echo Enter the website locally with test.localhost:8080
