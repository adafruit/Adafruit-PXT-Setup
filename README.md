# Adafruit-PXT-Setup

## Install Locally on a Recent Debian-derived GNU/Linux System

This is likely (though not guaranteed) to work on a recent stable Debian, or on
Ubuntu 16.04, 17.10, or 18.04.

Have a look at [`setup.sh`](/setup.sh).  This script will install a large
number of dependencies and modify your systemwide configuration.  It also
includes an example of piping a file retrieved with `curl` directly to `sudo`,
which everyone agrees is a very bad idea but which is also standard practice
for countless projects, so please use caution.

You can run the script like so:

```
git clone https://github.com/adafruit/Adafruit-PXT-Setup.git
cd Adafruit-PXT-Setup
sh setup.sh
```

## Using Vagrant

First, [install Vagrant][vagrant].

Next:

```
git clone https://github.com/adafruit/Adafruit-PXT-Setup.git
cd Adafruit-PXT-Setup
vagrant up
```

This will probably take quite a while to run, especially on a slow connection.

From inside the Vagrant-managed virtual machine, you have two choices.  First,
you can generate a static build of MakeCode to be hosted elsewhere:

```
vagrant ssh
cd pxt-adafruit

# This will probably fail on the first run; just try again when it does:
pxt staticpkg -o /vagrant/pxt-adafruit-static
```

Alternatively, you can serve the static version of the site from the Vagrant
box itself:

```
vagrant ssh
cd pxt-adafruit

# This will probably fail on the first run; just try again when it does:
pxt staticpkg -o /var/www/html
```

Then load `http://localhost:8080` in a browser.

[vagrant]: https://www.vagrantup.com/downloads.html
