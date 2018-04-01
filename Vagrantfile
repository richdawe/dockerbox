Vagrant.configure("2") do |config|
  config.vm.define "dockerbox"

  config.vm.box = "ubuntu/xenial64"
  config.vm.provider "virtualbox" do |v|
    v.memory = 512
  end

  config.ssh.forward_agent = true
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "forwarded_port", guest: 8443, host: 8443

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "playbook.yml"
    ansible.verbose = "-vv"
    ansible.install = true
  end
end

