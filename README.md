# MaximTimohin_infra
MaximTimohin Infra repository

#
##### packer build
/usr/bin/packer build -var-file="packer/variables.json"  packer/image_family/immutable.json

 - packer/variables.json - Файл с переменными
 - packer/image_family/immutable.json - Шаблон


С помощью данного шаблона собирается образ(reddit-full) в нём установлены все необходимые пакеты,
при старте instance автоматически запускается puma.

http://158.160.62.206:9292/

##### Скрипт создания instance
config-scripts/create-reddit-vm.sh
