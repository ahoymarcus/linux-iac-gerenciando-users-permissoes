#!/bin/bash
#

# Criar diretórios institucionais
echo -e "Criando diretórios institucionais...\n"

mkdir /comp_publico
mkdir /comp_adm
mkdir /comp_ven
mkdir /comp_sec


# Criar grupos administrativos
echo -e "Criando grupos institucionais...\n"

groupadd GRP_PUBLICO
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


# Definir privilégios nas pastas institucionais
# Nota: veja que há 2 formas rápidas de definir 
# a propriedade de grupo das pastas
echo -e "Definindo permissões institucionais...\n"

# chgrp GRP_PUBLICO /comp_publico
# chgrp GRP_ADM /comp_adm
# chgrp GRP_VEN /comp_ven
# chgrp GRP_SEC /comp_sec

chown root:GRP_PUBLICO /comp_publico
chown root:GRP_ADM /comp_adm
chown root:GRP_VEN /comp_ven
chown root:GRP_SEC /comp_sec

chmod 770 /comp_publico
chmod 770 /comp_adm
chmod 770 /comp_ven
chmod 770 /comp_sec

# Criar usuários administrativos
echo -e "Criando usuários institucionais...\n"
useradd carlos -m -c "Funcionário ADM" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM,GRP_PUBLICO
useradd maria -m -c "Funcionária ADM" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM,GRP_PUBLICO
useradd joao -m -c "Funcionáio ADM" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM,GRP_PUBLICO

useradd debora -m -c "Funcionária VEN" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN,GRP_PUBLICO
useradd sebastiana -m -c "Funcionária VEN" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN,GRP_PUBLICO
useradd roberto -m -c "Funcionário VEN" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN,GRP_PUBLICO

useradd josefina -m -c "Funcionária SEC" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC,GRP_PUBLICO
useradd amanda -m -c "Funcionária SEC" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC,GRP_PUBLICO
useradd rogerio -m -c "Funcionário SEC" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC,GRP_PUBLICO

echo -e "Script finalizado!\n"



