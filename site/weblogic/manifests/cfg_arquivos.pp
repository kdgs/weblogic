#Classe de configuração de arquivos
class weblogic::cfg_arquivos inherits weblogic {

  file { $weblogic::oracle_dir:
    ensure => 'directory',
    owner  => $weblogic::weblogic_user,
    group  => $weblogic::weblogic_group,
    mode   => $weblogic::weblogic_priv,
  }->file { "${weblogic::oracle_dir}/install":
    ensure =>'directory',
    owner  =>$weblogic::weblogic_user,
    group  =>$weblogic::weblogic_group,
    mode   =>$weblogic::weblogic_priv,
    }

  file { $weblogic::oracle_inst_loc:
    ensure  => present,
    content => template('weblogic/oraInst.loc.erb'),
    owner   => $weblogic::weblogic_user,
    group   => $weblogic::weblogic_group,
    mode    => $weblogic::weblogic_priv,
  }
  file { $weblogic::weblogic_wls_rsp:
    ensure  => present,
    content => template('weblogic/wls.rsp.erb'),
    owner   => $weblogic::weblogic_user,
    group   => $weblogic::weblogic_group,
    mode    => $weblogic::weblogic_priv,
  }
  file { $weblogic::opt_dir:
    ensure => directory,
    owner  => $weblogic::oracle_user,
    group  => $weblogic::oracle_group,
  }~>file{ "${weblogic::opt_dir}/jdk":
      ensure => directory,
      owner  => $weblogic::oracle_user,
      group  => $weblogic::oracle_group,
  }->file { "${weblogic::opt_dir}/java":
    ensure => 'link',
    target => "${weblogic::opt_dir}/jdk/${weblogic::jdk_version}",
  }
}
