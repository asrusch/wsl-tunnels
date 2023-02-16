#!/bin/bash

# Bootstrap some stuff for Tunnels on WSL

# Do not run as root/sudo!

sudo apt install -y ntpdate
sudo ntpdate us.pool.ntp.org
sudo apt -y update; sudo apt -y upgrade
sudo apt install -y autossh whois bash-completion python3-pip
yes | pip3 install chromaterm
cp ~/wsl-tunnel/wsl-bootstrap/.bash_aliases ~/.bash_aliases
cp ~/wsl-tunnel/wsl-bootstrap/.chromaterm.yml ~/.chromaterm.yml
cp ~/wsl-tunnel/wsl-bootstrap/.digrc ~/.digrc
cp ~/wsl-tunnel/wsl-bootstrap/.vimrc ~/.vimrc
cp ~/wsl-tunnel/wsl-bootstrap/ssh_config ~/.ssh/config
echo 'source ~/wsl-browsertunnel/tunnels-completion.bash' >> ~/.bashrc
echo 'export PATH=$PATH:~/.local/bin' >> ~/.bashrc
