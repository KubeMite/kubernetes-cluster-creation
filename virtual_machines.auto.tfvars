virtual_machines = {
  "host01" = {
    ip                = "172.16.3.11"
    memory_minimum_mb = 1024
    memory_maximum_mb = 2048
    startup_command   = "/usr/bin/kubeadm init --skip-certificate-key-print --skip-token-print --upload-certs --control-plane-endpoint 172.16.3.11:6443"
  }
  "host02" = {
    ip                = "172.16.3.12"
    memory_minimum_mb = 1024
    memory_maximum_mb = 2048
    startup_command   = "/usr/bin/kubeadm join --control-plane --discovery-token-unsafe-skip-ca-verification 172.16.3.11:6443"
  }
  "host03" = {
    ip                = "172.16.3.13"
    memory_minimum_mb = 1024
    memory_maximum_mb = 2048
    startup_command   = "/usr/bin/kubeadm join --control-plane --discovery-token-unsafe-skip-ca-verification 172.16.3.11:6443"
  }
  "host04" = {
    ip              = "172.16.3.14"
    startup_command = "/usr/bin/kubeadm join --discovery-token-unsafe-skip-ca-verification 172.16.3.11:6443"
  }
  "host05" = {
    ip              = "172.16.3.15"
    startup_command = "/usr/bin/kubeadm join --discovery-token-unsafe-skip-ca-verification 172.16.3.11:6443"
  }
}