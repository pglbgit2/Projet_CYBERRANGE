Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.synced_folder "pentest-scenario/basic-sql-injection/shared-files", "/shared"
  
  config.vm.define "database" do |db|
    db.vm.network "private_network", ip: "192.168.56.3"
    db.vm.provision "shell", path: "pentest-scenario/basic-sql-injection/provision-db.sh"
  end
  
  config.vm.define "web" do |web|
    web.vm.network "private_network", ip: "192.168.56.2"
    web.vm.provision "shell", path: "pentest-scenario/basic-sql-injection/provision-web.sh"
  end

  config.vm.define "client" do |client|
    client.vm.network "private_network", ip: "192.168.56.5"
    client.vm.provision "shell", path: "pentest-scenario/basic-sql-injection/provision-client.sh"
  end
  
end

