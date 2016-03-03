Vagrant.configure("2") do |config|
  config.vm.define "dockerbox"

  config.vm.box = "ubuntu/trusty64"
  config.vm.provider "virtualbox" do |v|
    v.memory = 512
  end

  config.ssh.forward_agent = true
  config.vm.network "forwarded_port", guest: 8000, host: 8000

  config.vm.provision "shell", path: "install-docker.sh"
  config.vm.provision "shell", path: "install-python.sh"
end

