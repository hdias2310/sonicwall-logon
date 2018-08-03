#!/bin/bash
sudo apt install cowsay -y
sudo ln -s /usr/games/cowsay /bin/cowsay

cowsay -f tux "\n[Installing SonicWall Auto Logon]\n"

rm -Rf /tmp/sonicwall-logon
git clone https://github.com/erickponce/sonicwall-logon.git  /tmp/sonicwall-logon
cd /tmp/sonicwall-logon
sudo chmod a+x setup.sh
sudo bash setup.sh
rm -Rf /tmp/sonicwall-logon
