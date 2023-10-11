Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.synced_folder "pentest-scenario/basic-sql-injection/shared-files", "/shared"
  
  config.vm.define "database" do |db|
    db.vm.network "private_network", ip: "192.168.56.3"
    db.vm.provision "shell", path: "provision-db.sh"
  end
  
  config.vm.define "web" do |web|
    web.vm.network "private_network", ip: "192.168.56.2"
    web.vm.provision "shell", path: "provision-web.sh"
  end
  
end

