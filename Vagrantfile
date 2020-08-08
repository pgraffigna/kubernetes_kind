Vagrant.configure("2") do |config|
  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", disabled: true	  

  config.vm.define "kind" do |k|
    k.vm.box = "geerlingguy/ubuntu1804" 
    k.vm.hostname = "kind.test"
    k.vm.network "private_network", ip: "192.168.60.10"
    k.vm.provision "shell", path: "docker.sh"
    k.vm.provision "shell", path: "kind.sh"
    k.vm.provision "shell", path: "kubectl.sh"
  end
 
  config.vm.provider "virtualbox" do |vb|
    vb.name = "kind"
    vb.memory = "2048"
    vb.cpus = "1"
  end
end