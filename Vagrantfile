# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'generic/2204'
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.provider ('libvirt') do |vb|
    vb.memory = 1024 * 4
    vb.cpus = 4
  end
  config.vm.provision "shell", inline: <<-SHELL
    curl -fsSL https://raw.githubusercontent.com/YumaYX/raft/main/build.sh | sudo sh
  SHELL
end

