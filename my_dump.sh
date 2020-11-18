#!/bin/bash

clear
echo "my_dump"
package_list=(git
	      curl
	      sl)

dnf install ${package_list[@]}
dnf install snapd
ln -s /var/lib/snapd/snap /snap
snap install discord
cd /tmp
git clone https://github.com/Epitech/dump.git
cd ./dump
./install_packages_dump.sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
snap install spotify
snap install code --classic
