# ntp/manifests/init.pp
class ntp () {
    notify {"Default Node Reached":
    message => "\n\n\n\tTeste:  ${lookup('ntp::autoupdate')}\n\tServiço: ${lookup('ntp::service_name')}\n\n\n",
  }
}
