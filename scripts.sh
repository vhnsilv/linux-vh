#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd -m -s /bin/bash -G GRP_ADM Carlos
useradd -m -s /bin/bash -G GRP_ADM Maria
useradd -m -s /bin/bash -G GRP_ADM Joao

useradd -m -s /bin/bash -G GRP_VEN Debora
useradd -m -s /bin/bash -G GRP_VEN Sebastiana
useradd -m -s /bin/bash -G GRP_VEN Roberto

useradd -m -s /bin/bash -G GRP_SEC Josefina
useradd -m -s /bin/bash -G GRP_SEC Amanda
useradd -m -s /bin/bash -G GRP_SEC Rogerio

echo "Definindo senha padrão..."
usermod -p $(openssl passwd Senha123) Carlos
usermod -p $(openssl passwd Senha123) Maria
usermod -p $(openssl passwd Senha123) Joao

usermod -p $(openssl passwd Senha123) Debora
usermod -p $(openssl passwd Senha123) Sebastiana
usermod -p $(openssl passwd Senha123) Roberto

usermod -p $(openssl passwd Senha123) Josefina
usermod -p $(openssl passwd Senha123) Amanda
usermod -p $(openssl passwd Senha123) Rogerio

echo "Liberação de acesso..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Concluído!!!"
