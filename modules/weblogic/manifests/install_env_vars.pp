#==============================================================================================================#
#                         Parametros definidos no arquivo weblogic/data/common.yaml                            #
#==============================================================================================================#
#        Parametros                                                             Descrição                      #
#========================== ===================================================================================#
# weblogic::env_java_home    Define variavel de ambiente $JAVA_HOME                                            #
# weblogic::env_mw:          Define parte da variavel de ambiente MW. É utilizado em conjunto com o parametro  #
#                            weblogic::env::mw_version                                                         #
# weblogic::env_mw_version   Define versão do MiddleWare utilizado. Este parametro deve ser informado para     #
#                            formar a variavel de ambiente $MW                                                 #
# weblogic::env_wl_log       Define variavel de ambiente $WL_LOG                                               #
# weblogic::env_domains:     Define variavel de ambiente $DOMAINS                                              #
# weblogic::env_shell:       Define shell para ser inserido no arquivo .bashrc.                                #
#========================== ===================================================================================#
class weblogic::install_env_vars{
  notify { 'msg-env-vars':
    message => "====>\tConfigurando variáveis de ambiente",
  }
  file { '/home/oracle/.bashrc':
    content => inline_template( "${lookup('weblogic::env_shell')}",
                                "\nJAVA_HOME=${lookup('weblogic::env_java_home')}",
                                "\nMW=${lookup('weblogic::env_mw')}${lookup('weblogic::env_mw_version')}",
                                "\nWL_LOG=${lookup('weblogic::env_wl_log')}",
                                "\nDOMAINS=${lookup('weblogic::env_wl_log')}",
                                "\nPATH=\$JAVA_HOME/bin:\$PATH:\$HOME/bin\n"),
  }
}
