# MorNetwork Controller (MNC)
MorNetwork Controller is a tool that helps facilitate the installation and management of the platform created by MorTorq Team 1515 (FIRST Robotics Team).
# Installation
To install the MNC, run this command in Linux.

```git clone https://github.com/JaydenB0/MorNetwork-Controller.git```

After that, to install the MorTeam platform, run this command and select the appropriate packages that you want to utilize.

```chmod 755 install.sh; ./install.sh```

## Running
In order to start up the MorTeam platform, run this command.

```chmod 755 start.sh; ./start.sh```

To access the webpage, go into your favorite browser and access these addresses:

|Platform|Address  |
|--|--|
| MorTeam |test.localhost:8080  |
| MorScout | scout.test.localhost:8080|
| MorParts | parts.test.localhost:8080 |


## Shutdown
In order to shutdown the server, run this command.

```chmod 755 shutdown.sh; ./shutdown.sh```
## Reinstall
In case anything goes wrong with your installation, delete either the entire MorServer folder or the messed up repositories and reinstall them using the install.sh script.

