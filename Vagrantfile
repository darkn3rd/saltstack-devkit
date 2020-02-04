# -*- mode: ruby -*-
# vi: set ft=ruby :
@time = Time.now.strftime("%Y%m%d%H%M%S")
SALT_DEBUG = ENV['SALT_DEBUG'] || true

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-18.04"

  # global mounts
  config.vm.synced_folder './roots/salt/', '/srv/salt'
  config.vm.synced_folder './roots/pillar', '/srv/pillar'

  # global configuration
  config.vm.hostname = "nginx-node.dev"
  config.vm.provider("virtualbox") { |vbox| vbox.name = "nginx_node_#{@time}" }
  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.provision :shell, inline: 
    "apt-get -qq update && \
     apt-get -y install git-core python-pygit2 python-git"

  config.vm.provision :salt do |salt|
    # Workaround for permissions issues
    salt.minion_config = "./config/minion.yaml"
    salt.masterless = true
    salt.run_highstate = true
    salt.verbose = SALT_DEBUG
  end
end
