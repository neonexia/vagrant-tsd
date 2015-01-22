#! /bin/bash

service iptables stop
chkconfig iptables off
service ip6tables stop
chkconfig ip6tables off

cp /vagrant/dn_hosts /etc/hosts

#
mkdir /home/vagrant/chef/
chown -R vagrant:vagrant /home/vagrant/chef

#
cp /vagrant/solo.rb /home/vagrant/chef/
cp /vagrant/*.json /home/vagrant/chef/
cp /vagrant/Cheffile /home/vagrant/chef/
ln -s /vagrant/jdk1.7.0_51/bin/java /usr/bin/java