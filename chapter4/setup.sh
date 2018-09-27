#/bin/sh

# update yum
sudo yum update -y

# install some tools
sudo yum install -y git vim gcc glibc-static telnet bridge-utils

# install docker
curl -fsSL get.docker.com -o get-docker.sh

#sh /vagrant/get-docker.sh --mirror=Aliyun	
sh get-docker.sh --mirror=Aliyun	

# start docker service
sudo groupadd docker
sudo usermod -aG docker vagrant
sudo systemctl start docker.service

rm -rf get-docker.sh
