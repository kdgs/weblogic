#==============================================================================================================#
#                         Parametros definidos no arquivo weblogic/data/common.yaml                            #
#==============================================================================================================#
#             Parametros                                            Descrição                                  #
#==================================== =========================================================================#
# weblogic::base_user_weblogic_group   Define grupo padrão a ser utilizado na instalação dos serviços Weblogic #
# weblogic::base_user_weblogic_gid     Define GID para inserção de usuários neste grupo via Puppet             #
# weblogic::base_user_weblogic_user    Define nome de usuário padrão a ser utilizado nos serviços Weblogic     #
# weblogic::base_user_weblogic_user    Define nome de usuário padrão a ser utilizado no ServerAdmin Weblogic   #
#==================================== =========================================================================#

class weblogic::base_users_weblogic {
  notify { 'msg-users-weblogic':
    message => "====>\tCriando usuários weblogic",
  }
  group { lookup('weblogic::base_user_weblogic_group'):
    ensure => present,
    gid    => lookup('weblogic::base_user_weblogic_gid'),
  }

  user{ lookup('weblogic::base_user_weblogic_user'):
    ensure     => present,
    gid        => lookup('weblogic::base_user_weblogic_gid'),
    managehome => true,
  }

  user{ lookup('weblogic::base_user_weblogic_user_adm'):
    ensure     => present,
    gid        => lookup('weblogic::base_user_weblogic_gid'),
    managehome => true,
  }
}
