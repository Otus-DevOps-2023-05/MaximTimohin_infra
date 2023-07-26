# MaximTimohin_infra
MaximTimohin Infra repository
##### Terraform + LoadBalancer

 - Создал 2 instance на  основе образа из прошлых заданий.
 - Создал LoadBalancer.
 - Протестировал доступность при отключении одного из instance.

#####
 - Выполнил основное задание
При выполнении команды
```
ansible app -m command -a 'rm -rf ~/reddit'
```
удалился каталог reddit, повторное выполнение clone.yml повторно его создало
