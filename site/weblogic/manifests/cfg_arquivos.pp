#Classe de confi    exec { 'JAVA_HOME':
    environment => ["JAVA_HOME=${weblogic::java_env_path}"],
  }
  exec { 'MW':
    environment => ["MW=${weblogic::mw_env_path}"],
  }
  exec { 'WL_LOG':
    environment => ["WL_LOG=${weblogic::wl_log_env_path}"],
  }
  exec { 'DOMAINS':
    environment => ["DOMAINS=${weblogic::domains_env_path}"],
  }
  exec { 'PATH':
    environment => ["PATH=\$JAVA_HOME/bin:\$PATH:\$HOME/bin"],
  }guração de arquivos
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
