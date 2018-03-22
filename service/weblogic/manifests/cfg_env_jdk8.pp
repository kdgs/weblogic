#=======================================================================#
# Classe de configuração de variavel de ambiente para jdk superior a v8 #
#=======================================================================#
  class weblogic::cfg_env_jdk8 inherits weblogic{
    file { '/etc/environment':
      content => inline_template("\nJAVA_HOME=${weblogic::java_env_path}",
                                  "\nMW=${weblogic::mw_env_path}",
                                  "\nWL_LOG=${weblogic::wl_log_env_path}",
                                  "\nDOMAINS=${weblogic::domains_env_path}",
                                  "\nPATH=\$JAVA_HOME/bin:\$PATH:\$HOME/bin",
                                  "\nMEM_ARGS=${weblogic::domains_env_tunning}\n")
    }
    exec { 'source /etc/environment':
      command => "bash -c '/etc/environment'",
      path    => '/usr/local/bin:/usr/bin:/usr/sbin:/usr/local/sbin:/bin:/sbin',
    }

    file { $line::path_to_conf :
      ensure => present,
    } ->file_line { 'altera linha':
          path    => "${weblogic::java_env_path}/jre/lib/security",
          replace => true,
          line    => 'securerandom.source=file:/dev/urandom',
          match   => 'securerandom.source=file:/dev/./urandom',
        }
}
