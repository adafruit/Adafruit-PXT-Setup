# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANT_COMMAND = ARGV[0]
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # config.vm.box = "ubuntu/bionic64"
  config.vm.box = "ubuntu/xenial64"

  config.vm.synced_folder ".", "/vagrant", owner: "vagrant", group: "vagrant"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.ssh.forward_agent = true

  config.vm.provision :shell, path: "setup.sh", privileged: false
end
