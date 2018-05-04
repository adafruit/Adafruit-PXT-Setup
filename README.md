# Adafruit-PXT-Setup

First, have Vagrant installed.

Next:

```
git clone https://github.com/adafruit/Adafruit-PXT-Setup.git
cd Adafruit-PXT-Setup
vagrant up
vagrant ssh
cd pxt-adafruit

# Account for a missing dependency:
sudo npm install -g supports-color

# May need to try this twice; it's somewhat failure prone:
pxt staticpkg -o /vagrant/pxt-adafruit-static
```

You should now have a static build of MakeCode for Adafruit.
