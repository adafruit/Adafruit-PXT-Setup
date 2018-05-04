#!/bin/sh

# Install some dependencies:
sudo apt-get update
sudo apt-get install -y git libsecret-1-dev build-essential cmake gcc-arm-none-eabi binutils-arm-none-eabi avr-libc binutils-arm-none-eabi libnewlib-arm-none-eabi libnewlib-dev libstdc++-arm-none-eabi-newlib nginx

# Install Node.js:
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install -g jake
sudo npm install -g typings
sudo npm install -g pxt

# A bug in the typings install process changes ownership here to root:
sudo chown -R vagrant:vagrant ~/.config

# Clone repos from GitHub:
git clone https://github.com/Microsoft/pxt
git clone https://github.com/Microsoft/pxt-common-packages
git clone https://github.com/Microsoft/pxt-adafruit

cd pxt
npm install
typings install
jake

cd ..
cd pxt-common-packages
npm install
sudo npm link ../pxt

cd ..
cd pxt-adafruit
npm install
sudo npm link ../pxt
sudo npm link ../pxt-common-packages

# Install missing supports-color dependency:
# sudo npm install -g supports-color
