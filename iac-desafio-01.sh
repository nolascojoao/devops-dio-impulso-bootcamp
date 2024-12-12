#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /admin
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_VEN
useradd sebastiao -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /admin
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /admin
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Completo!"


