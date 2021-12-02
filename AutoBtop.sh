# update
sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade

# Use gcc-10 g++-10 if gcc-11 isn't available
sudo apt install gcc-11 g++-11 -y
sudo apt install coreutils sed git build-essential gcc-11 g++-11
sudo apt autoremove -y

# Clone repository
git clone https://github.com/aristocratos/btop.git
cd btop

# Compile
sudo apt install make
make

# Install
sudo make install

# Set suid bit to make btop always run as root
sudo make setuid
