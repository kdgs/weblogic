#Classe de configuração base
class weblogic::cfg_base inherits weblogic {



}

#diretorios /var/weblogic
#           /opt/Oracle
#
#verificar -> /opt/Oracle/jdk/$weblogic::path_jdk:
#
#link simbolico -> ln -s /opt/Oracle/jdk/$weblogic::path_jdk /opt/Oracle/java
#
#editar /home/oracle/.bash_profile
#  -> JAVA_HOME
#  -> MW
#  -> DOMAINS
#  -> WL_LOG
#
#export JAVA_HOME=/opt/Oracle/java
#export MW=/opt/Oracle/Middleware1213
#export WL_LOG=/var/log/wl/
#export DOMAINS=/var/weblogic/domains/
#PATH=$JAVA_HOME/bin:$PATH:$HOME/bin
#export PATH
#
## cd $JAVA_HOME/jre/lib/security
## vi java.security
#Trocar: securerandom.source=file:/dev/urandom
#Por: securerandom.source=file:/dev/./urandom
#
## cd $DOMAINS/bin/
## vi setDomainEnv.sh
#MEM_ARGS= “-Djava.security.egd=file:/dev/./urandom”
#export MEM_ARGS
#
