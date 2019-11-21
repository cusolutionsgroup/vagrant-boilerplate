

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-12.04"
  config.vm.provision :shell, :path => "vm_provision/provision-ubuntu-12.04.sh"
  # config.vm.provision :shell, :path => "vm_provision/custom-installation.sh"
  # It is up to the users to make sure that the static IP does not collide with any other machines on the same network.
  # https://www.vagrantup.com/docs/networking/private_network.html#static-ip
  config.vm.network "private_network", ip: "99.99.99.99"
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50", "--cpus", "1"]
    vb.memory = 1024
  end
end
