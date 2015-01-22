VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef-centos65"
  
  config.vm.define "nn" do |nn|
    nn.vm.hostname = "nn"
    nn.vm.network :private_network, ip: "192.168.33.10"
    #nn.vm.network "public_network"
    nn.vm.provider :virtualbox do |vb|
      vb.memory=2048
      vb.cpus = 2
    end
    nn.vm.network "forwarded_port", guest: 50070, host: 50070
    #nn.vm.network "forwarded_port", guest: 7077, host: 7077
    nn.vm.provision "shell" do |s|
      s.path="nn_setup.sh"
    end
  end
  
  config.vm.define "dn1" do |dn1|
    dn1.vm.hostname = "dn1"
    dn1.vm.network :private_network, ip: "192.168.33.11"
    #dn1.vm.network "public_network"
    dn1.vm.provider :virtualbox do |vb|
      vb.memory=2048
      vb.cpus = 2
    end
    dn1.vm.provision "shell" do |s|
      s.path="dn_setup.sh"
    end
    #dn1.vm.network "forwarded_port", guest: 8080, host: 8080
    #dn1.vm.network "forwarded_port", guest: 7077, host: 7077
  end
  
  config.vm.define "tsd" do |tsd|
    tsd.vm.hostname = "tsd"
    tsd.vm.network :private_network, ip: "192.168.33.12"
    #tsd.vm.network "public_network"
    tsd.vm.provider :virtualbox do |vb|
      vb.memory=2048
      vb.cpus = 2
    end
    tsd.vm.provision "shell" do |s|
      s.path="tsd_setup.sh"
    end
    #tsd.vm.network "forwarded_port", guest: 8080, host: 8080
    #tsd.vm.network "forwarded_port", guest: 7077, host: 7077
  end
end
