#Classe de configuração de variavel de ambiente
  class weblogic::cfg_env inherits weblogic{
  file { "/etc/environment":
        content => inline_template("\nJAVA_HOME=${weblogic::java_env_path}",
                                    "\nMW=${weblogic::mw_env_path}",
                                    "\nWL_LOG=${weblogic::wl_log_env_path}",
                                    "\nDOMAINS=${weblogic::domains_env_path}",
                                    "\nPATH=\$JAVA_HOME/bin:\$PATH:\$HOME/bin\n")
    }
}
