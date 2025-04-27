#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -c "Usuário do grupo ADM" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Usuário do grupo ADM" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "Usuário do grupo ADM" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd joao -e

useradd debora -c "Usuário do grupo VEN" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Usuário do grupo VEN" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Usuário do grupo VEN" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Usuário do grupo SEC" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Usuário do grupo SEC" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Usuário do grupo SEC" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd rogerio -e

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim!"
