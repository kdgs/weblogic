#=======================================================================#
# Classe de configuração de variavel de ambiente para jdk inferior a v8 #
#=======================================================================#
  class weblogic::cfg_env inherits weblogic{
    file { '/home/oracle/.bashrc':
      content => inline_template("\nif [ -f /etc/bashrc ]; then",
                                "\n\t. /etc/bashrc",
                                "\nfi",
                                "\n\n\nJAVA_HOME=${weblogic::java_env_path}",
                                "\nMW=${weblogic::mw_env_path}",
                                "\nWL_LOG=${weblogic::wl_log_env_path}",
                                "\nDOMAINS=${weblogic::domains_env_path}",
                                "\nPATH=\$JAVA_HOME/bin:\$PATH:\$HOME/bin\n"),
    }
    file { "${weblogic::java_env_path}/jre":
      ensure  => directory,
    }-> file { "${weblogic::java_env_path}/jre/lib":
          ensure  => directory,
        }-> file { "${weblogic::java_env_path}/jre/lib/security":
              ensure  => present,
              content => 'securerandom.source=file:/dev/urandom',
            }-> file_line { 'altera linha':
                  path    => "${weblogic::java_env_path}/jre/lib/security",
                  replace => true,
                  line    => 'securerandom.source=file:/dev/./urandom',
                  match   => 'securerandom.source=file:/dev/urandom',
                }
}
