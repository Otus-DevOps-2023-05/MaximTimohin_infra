# MaximTimohin_infra
MaximTimohin Infra repository

bastion_IP = 158.160.74.161   
someinternalhost_IP = 10.129.0.8

Рализована связка в letsencrypt
ссылка для входа https://otus-devops.tdsplus.ru/login

Прозрачное подключение в серверу someinternalhost через bastion хост по имени сервера


```
cat  ~/.ssh/config
Host bastion
    HostName 158.160.71.250
    IdentityFile /home/maxim/otus_devops/otus_git/ssh/MaxOtus
    User appuser

Host database
    HostName 10.129.0.15
    IdentityFile /home/maxim/otus_devops/otus_git/ssh/MaxOtus
    Port 22
    User appuser
    ProxyJump bastion
```

Проверка подключения
```
➜  MaximTimohin_infra git:(cloud-bastion) ssh bastion  'hostnamectl ; ip -4 a'
   Static hostname: bastion
         Icon name: computer-vm
           Chassis: vm
        Machine ID: 2300000765ab5a090346150c2aefe93c
           Boot ID: ee085442de334c03814546d409a96038
    Virtualization: kvm
  Operating System: Ubuntu 20.04.6 LTS
            Kernel: Linux 5.4.0-152-generic
      Architecture: x86-64
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    inet 10.129.0.21/24 brd 10.129.0.255 scope global eth0
       valid_lft forever preferred_lft forever
14: tun0: <POINTOPOINT,MULTICAST,NOARP,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UNKNOWN group default qlen 1000
    inet 192.168.247.1/24 brd 192.168.247.255 scope global tun0
       valid_lft forever preferred_lft forever
15: wg0: <POINTOPOINT,NOARP,UP,LOWER_UP> mtu 1420 qdisc noqueue state UNKNOWN group default qlen 1000
    inet 192.168.248.1/24 scope global wg0
       valid_lft forever preferred_lft forever

➜  MaximTimohin_infra git:(cloud-bastion) ssh someinternalhost 'hostnamectl'
   Static hostname: someinternalhost
         Icon name: computer-vm
           Chassis: vm
        Machine ID: 2300000765a15b617ff3948cdace8609
           Boot ID: 32038263266c42758b677c693c1c503a
    Virtualization: kvm
  Operating System: Ubuntu 20.04.6 LTS
            Kernel: Linux 5.4.0-152-generic
      Architecture: x86-64
➜  MaximTimohin_infra git:(cloud-bastion) ssh someinternalhost 'hostnamectl ; ip -4 a'
   Static hostname: someinternalhost
         Icon name: computer-vm
           Chassis: vm
        Machine ID: 2300000765a15b617ff3948cdace8609
           Boot ID: 32038263266c42758b677c693c1c503a
    Virtualization: kvm
  Operating System: Ubuntu 20.04.6 LTS
            Kernel: Linux 5.4.0-152-generic
      Architecture: x86-64
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    inet 10.129.0.8/24 brd 10.129.0.255 scope global eth0
       valid_lft forever preferred_lft forever
```







