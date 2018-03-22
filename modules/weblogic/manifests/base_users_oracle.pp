#==============================================================================================================#
#                         Parametros definidos no arquivo weblogic/data/common.yaml                            #
#==============================================================================================================#
#             Parametros                                            Descrição                                  #
#==============================================================================================================#
# weblogic::base_user_oracle_group   Define grupo padrão a ser utilizado na instalação dos serviços Oracle     #
# weblogic::base_user_oracle_gid     Define GID para inserção de usuários neste grupo via Puppet               #
# weblogic::base_user_oracle_user    Define nome de usuário padrão a ser utilizado nos serviços Oracle         #
#==============================================================================================================#

class weblogic::base_users_oracle {
  notify { 'msg-users-oracle':
    message => "====>\tCriando usuários Oracle",
  }
  group { lookup('weblogic::base_user_oracle_group'):
    ensure => present,
    gid    => lookup('weblogic::base_user_oracle_gid'),
  }
  user{ lookup('weblogic::base_user_oracle_user'):
    ensure     => present,
    gid        => lookup('weblogic::base_user_oracle_gid'),
    managehome => true,
  }
}
