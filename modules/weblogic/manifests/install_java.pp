#==============================================================================================================#
#       Parametros                                               Descrição                                     #
#==============================================================================================================#
#  weblogic::temp_dir:       Define diretório temporário para download do arquivo zip do Java                  #
#  weblogic::jdk_zip_file:   Define nome do arquivo zip do Java                                                #
#  weblogic::jdk_src_link:   Define url qual será feito download do arquivo Java citado acima                  #
#  weblogic::jdk_version:    Define versão do arquivo do Java                                                  #
#==============================================================================================================#
# As variáveis acima foram definidas de acordo com o manual de boas praticas e de instalação do Weblogic.      #
# Futuramente, será implementado um script que fará o tratamento do arquivo Zip e definirá alguns desses       #
# parâmetros citados acima automaticamente.                                                                    #
#==============================================================================================================#

class weblogic::install_java {
  notify { 'msg-install-java':
    message => "====>\tIniciando instalação Java (install_java.pp)",
  }
#Efetua download do arquivo Java e extrai no caminho definido pelos parametros citados acima
  file{ '/tmp':
    ensure => directory,
  }-> archive { "${lookup('weblogic::temp_dir')}${lookup('weblogic::jdk_zip_file')}":
        ensure       => present,
        extract      => true,
        extract_path => "${lookup('weblogic::base_oracle_root_path')}/jdk/",
        source       => lookup('weblogic::jdk_src_link'),
      }-> file{ "${lookup('weblogic::temp_dir')}${lookup('weblogic::jdk_zip_file')}":
            ensure => absent,
          }

#Executa criação de link simbolico
  file { [ "${lookup('weblogic::base_oracle_root_path')}",
          "${lookup('weblogic::base_oracle_root_path')}/jdk/",]:
    ensure => directory,
  }
  file { "${lookup('weblogic::base_oracle_root_path')}/java":
    ensure => link,
    target => "${lookup('weblogic::base_oracle_root_path')}/jdk/${lookup('weblogic::jdk_version')}",
  }
}
###############-- Verificar Uso --###############
#===      Código implementa dependencia      ===#
#===============================================#
#===  exec { "Create ${mydir}":              ===#
#===    creates => $mydir,                   ===#
#===    command => "mkdir -p ${mydir}",      ===#
#===    path => $::path                      ===#
#===  } -> file { $mydir : }                 ===#
#################################################
