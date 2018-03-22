#==========================================================================#
# Script para setar variavel de ambiente                                   #
#Pode ser trocado pelas configurações de variaveis no manifesto cfg_env.pp #
#==========================================================================#
MEM_ARGS= "-Djava.security.egd=file:/dev/./urandom"
export MEM_ARGS

if [ "${SERVER_NAME}" = "AdminServer" ] ; then
  MEM_ARGS=" -Xms2g –Xmx2g -XX:MaxPermSize=512m -Djava.security.egd=file:/dev/./urandom"
  export MEM_ARGS
fi
