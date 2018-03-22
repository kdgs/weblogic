#class profiles::tunning_weblogic{
# /opt/Oracle/java
  file { '$JAVA_HOME/jre/lib/security' :
      ensure => present,
      }-> file_line { 'replace':
            path      => $line::path_to_conf,
            replace => true,
            line       => 'securerandom.source=file:/dev/./urandom',
            match  => 'securerandom.source=file:/dev/urandom'
          }
  $var = variavel_de_parametro
  
  if $var =~ /^1.8.(\d)/ {
    file { '$DOMAINS/bin/setDomainEnv.sh':
    ensure => present,
    content => 'MEM_ARGS=“-Djava.security.egd=file:/dev/./urandom”
          export MEM_ARGS',
    }
  }
}
