node 'srv-web.mshome.net' {

  include weblogic

  notify { 'Instalação weblogic':
    message   => 'Configuração Padrão de Weblogic',
  }
}

node default {}
