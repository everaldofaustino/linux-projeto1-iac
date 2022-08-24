#!/bin/bash


echo "Criando pastas no diretório..."

mkdir /ven
mkdir /sec
mkdir /adm

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criando usuários... "

useradd carlos -c "Carlos da Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM
useradd maria -c "Maria da Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G  GRP_ADM
useradd joao_ -c "Joao da Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM
useradd debora -c "Debora da Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN
useradd sebastiana -c "Sebastiana da Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN
useradd roberto -c "Roberto da Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN
useradd josefina -c "Josefina da Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC
useradd amanda -c "Amanda da Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC
useradd rogerio -c "Rogério da Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC


echo "Grupos em diretórios... "

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
chmod 777 /publico

echo "Script finalizado..."




 

