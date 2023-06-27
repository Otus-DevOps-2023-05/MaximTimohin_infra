# MaximTimohin_infra
MaximTimohin Infra repository

testapp_IP = 158.160.111.61
testapp_port = 9292

#Ruby deploy
deploy.sh
#Mongo install
install_mongodb.sh
#Ruby install
install_ruby.sh

```
#!/bin/bash
cd /home/yc-user ;
apt install -y git ;
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install ;
puma -d
```

```
#!/bin/bash
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add - ;
echo "deb [ arch=amd64] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list ;
apt update ;
apt install -y mongodb-org ;
systemctl start mongod ;
systemctl enable mongod
```

```
#!/bin/bash
sudo apt update && sudo apt install -y ruby-full ruby-bundler build-essential
```

#Create instance in cli with deploy
yc compute instance create   --name reddit-app   --hostname reddit-app   --memory=4   --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB   --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4   --metadata serial-port-enable=1 --metadata-from-file user-data=cloud-config.yaml
