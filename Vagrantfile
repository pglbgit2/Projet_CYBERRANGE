Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  config.vm.synced_folder "pentest-scenaris/basic-sql-injection/shared-files", "/vagrant/shared"
  
  config.vm.define "database" do |db|
    db.vm.network "private_network", type: "dhcp"
    db.vm.provision "shell", path: "pentest-scenaris/basic-sql-injection/provision-db.sh"
  end

  config.vm.define "web" do |web|    
    web.vm.network "forwarded_port", guest:5000, host: 1234
    web.vm.network "private_network", type: "dhcp"
    web.vm.provision "shell", path: "pentest-scenaris/basic-sql-injection/provision-web.sh"
  end
end

