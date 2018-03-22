#MW_HOME/common/bin/config.sh
#$MW/Oracle_Home/oracle_common/common/bin/wlst.sh createDomain.py
#Diretorio dominios: /var/weblogic/domains/nomeDoDominio

#Memoria adminserver: /var/weblogic/domains/nomeDoDominio/bin/setDomainEnv.sh
#Add:
#if["${SERVER_NAME}"="AdminServer"];then
#  MEM_ARGS="-Xms2g –Xmx2g -XX:MaxPermSize=512m"
#  export MEM_ARGS
#fi

#Logs: /var/log/wl/nomeDoDominio

#Verificar:
#-Dweblogic.Stdout=/var/log/wl/dominio/Server-1/Server-1.out
#-Dweblogic.Stderr=/var/log/wl/dominio/Server-1/Server-1.err 
