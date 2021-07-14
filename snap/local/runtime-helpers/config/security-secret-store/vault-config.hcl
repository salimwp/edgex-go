# TODO: Ireland
#
# We should explore a better way to handle this file.
# As there isn't a default upstream vault config file
# that can be modified, we use this file for the snap,
# and for docker deployment, this file is generated by
# the script cmd/security-secret-setup/start_vault.sh.
#
# The only differences between this file and the file
# generated by the above script is that localhost is
# instead of docker hostnames.

listener "tcp" { 
  address = "localhost:8200" 
  tls_disable = "1"
}

backend "file" {
  path = "vault/file"
}

default_lease_ttl = "168h"
max_lease_ttl = "720h"