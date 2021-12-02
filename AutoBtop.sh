# update
sudo apt-get update && sudo apt-get upgrade

# app
sudo apt install -y make cmake gitk

# Use gcc-10 g++-10 if gcc-11 isn't available
sudo apt install -y coreutils sed git build-essential gcc-10 g++-10
sudo apt autoremove -y

# Clone repository
git clone https://github.com/aristocratos/btop.git
cd btop

# Compile
make

# Install
sudo make install

# Set suid bit to make btop always run as root
sudo make setuid
btop
