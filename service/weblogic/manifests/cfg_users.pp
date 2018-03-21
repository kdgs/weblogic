#Classe de configuração de usuários
class weblogic::cfg_users inherits weblogic {

  group { $weblogic::weblogic_group:
    ensure => present,
    gid    => $weblogic::weblogic_group_gid,
  }

  user { $weblogic::weblogic_user:
    ensure     => present,
    gid        => $weblogic::weblogic_group_gid,
    managehome => true,
  }

  group { $weblogic::oracle_group:
    ensure => present,
    gid    => $weblogic::oracle_group_gid,
  }

  user { $weblogic::oracle_user:
    ensure     => present,
    gid        => $weblogic::oracle_group_gid,
    managehome => true,
  }
}
