#Requer modulo puppet archive
class profile::install_java {

  #Alterar para arquivos tar.gz do JDK contidos no repositório do banco
  file{ '/tmp':
    ensure => directory,
    owner  =>,
    group  =>,
    mode   =>,
  }-> archive { '/tmp/':
        ensure        => present,
        extract       => true,
        extract_path  => '/tmp',
        source        => 'http://www.somewhere.com/something.tar.gz',
        creates       => '/tmp/something',
        cleanup       => true,
      }

#Executar instalação e criação de link simbolico
file { ['/opt/Oracle',
        '/opt/Oracle/jdk",]:
      ensure => directory,
     }->file { "/opt/Oracle/java":
          ensure => 'link',
          target => '/opt/Oracle/jdk/->VERSAO<-',
        }

  file { '/opt/Oracle/java.version':
    ensure => present,
    content => '->VERSAO<-',
  }
}

###############-- Verificar Uso --###############
#===  exec { "Create ${mydir}":              ===#
#===    creates => $mydir,                   ===#
#===    command => "mkdir -p ${mydir}",      ===#
#===    path => $::path                      ===#
#===  } -> file { $mydir : }                 ===#
#################################################
