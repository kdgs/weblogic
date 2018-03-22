#=======================================================================#
# Classe de configuração de arquivos                                    #
#=======================================================================#
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
  file { $weblogic::wl_log_env_path:
    ensure => 'directory',
    owner  => $weblogic::weblogic_user,
    group  => $weblogic::weblogic_group,
    mode   => $weblogic::weblogic_priv,
  }
  file { $weblogic::wl_var_path:
    ensure => 'directory',
    owner  => $weblogic::weblogic_user,
    group  => $weblogic::weblogic_group,
    mode   => $weblogic::weblogic_priv,
  }-> file { $weblogic::domains_env_path:
        ensure => 'directory',
        owner  => $weblogic::weblogic_user,
        group  => $weblogic::weblogic_group,
        mode   => $weblogic::weblogic_priv,
      }
  file { "${weblogic::oracle_home}${weblogic::oracle_mw_version}":
    ensure => 'directory',
    owner  => $weblogic::weblogic_user,
    group  => $weblogic::weblogic_group,
    mode   => $weblogic::weblogic_priv,
  }

  file { $weblogic::oracle_inst_loc:
    ensure  => present,
    content => template("${module_name}/oraInst.loc.erb"),
    owner   => $weblogic::weblogic_user,
    group   => $weblogic::weblogic_group,
    mode    => $weblogic::weblogic_priv,
  }
  file { $weblogic::weblogic_wls_rsp:
    ensure  => present,
    content => template("${module_name}/wls.rsp.erb"),
    owner   => $weblogic::weblogic_user,
    group   => $weblogic::weblogic_group,
    mode    => $weblogic::weblogic_priv,
  }
  file { $weblogic::opt_dir:
    ensure => directory,
    owner  => $weblogic::oracle_user,
    group  => $weblogic::oracle_group,
    mode   => $weblogic::weblogic_priv,
  }-> file{ "${weblogic::opt_dir}/jdk/${weblogic::jdk_version}":
        ensure => directory,
        owner  => $weblogic::oracle_user,
        group  => $weblogic::oracle_group,
      }-> file { "${weblogic::opt_dir}/java/":
            ensure => 'link',
            target => "${weblogic::opt_dir}/jdk/${weblogic::jdk_version}/",
          }
}
