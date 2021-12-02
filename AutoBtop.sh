# update
sudo apt-get update && sudo apt-get upgrade

# app
sudo apt install make cmake gitk -y

# Use gcc-10 g++-10 if gcc-11 isn't available
sudo apt install gcc-10 g++-10 -y
sudo apt install coreutils sed git build-essential gcc-10 g++-10
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
