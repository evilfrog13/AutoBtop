# add repo
sudo add-apt-repository ppa:ubuntu-toolchain-r/test

# update
sudo apt-get update -y && sudo apt-get upgrade -y

# app
sudo apt install -y make

# Use gcc-10 g++-10 if gcc-11 isn't available
sudo apt install -y coreutils sed git build-essential gcc-11 g++-11
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
