node default {
  #include ntp
  notify {'teste facter':
    message => "Teste versão java: ${facts['java_version']}",
  }
}
