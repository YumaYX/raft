Vagrant.configure('2') do |config|
  config.vm.box = 'generic/ubuntu2204'
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provider :libvirt do |vb|
    vb.memory = 4096
    vb.cpus  = 4
  end

  config.vm.provision "shell", privileged: true, inline: <<-SHELL
    curl -fsSL https://raw.githubusercontent.com/YumaYX/raft/main/build.sh | sh
  SHELL
end

