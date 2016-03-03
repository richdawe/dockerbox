Vagrant.configure("2") do |config|
  config.vm.define "dockerbox"

  config.vm.box = "ubuntu/trusty64"
  config.vm.provider "virtualbox" do |v|
    v.memory = 512
  end

  config.vm.provision "shell", path: "install-docker.sh"
end

