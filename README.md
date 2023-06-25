# MaximTimohin_infra
MaximTimohin Infra repository

Прозрачное подключение в серверу database через bastion хост по имени сервера


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

```
➜  cloud-bastion git:(main) ✗ ssh bastion 'hostname ; ip -4 a'
bastion
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    inet 10.129.0.21/24 brd 10.129.0.255 scope global eth0
       valid_lft forever preferred_lft forever


➜  cloud-bastion git:(main) ✗ ssh database 'hostname ; ip -4 a'
database
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    inet 10.129.0.15/24 brd 10.129.0.255 scope global eth0
       valid_lft forever preferred_lft forever
```
