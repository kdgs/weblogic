#Classe de parametros
class weblogic inherits weblogic::params {
  #Executa configuração de usuários necessários para rodar as aplicações
  include weblogic::cfg_users

  #Executa configuração de arquivos de configuração contendo parametros para
  #a instalação do servidor de aplicação
  include weblogic::cfg_arquivos

  #Executa configuração de variaveis de ambiente
  include weblogic::cfg_env

  #Executa a instalação do servidor de aplicação Weblogic baseado nas configurações
  #do modulo Puppet
  #include weblogic::install_weblogic
}
