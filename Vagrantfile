Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.synced_folder "test/", "/test"
  
  config.vm.define "database" do |db|
    db.vm.network "private_network", type: "dhcp"
    db.vm.provision "shell", path: "provision-db.sh"
  end
  
  config.vm.define "web" do |web|
    web.vm.network "private_network", type: "dhcp"
    web.vm.provision "shell", path: "provision-web.sh"
  end
  
end

