#!/bin/sh
# install new EXAScaler Cloud clients:
# all instances must be in the same location ${location}
# and connected to the network ${network}
# and subnet ${subnetwork}
# to set up EXAScaler Cloud filesystem on a new client instance,
# run the folowing commands on the client with root privileges:

cat >/etc/esc-client.conf<<EOF
{
  "Version": "${loci}",
  "MountConfig": {
    "ClientDevice": "${mgs}@tcp:/${fsname}",
    "Mountpoint": "/mnt/${fsname}",
    "PackageSource": "http://${mgs}/client-packages"
  }
}
EOF

curl -fsSL http://${mgs}/client-setup-tool -o /usr/sbin/esc-client
chmod +x /usr/sbin/esc-client
esc-client auto setup --config /etc/esc-client.conf
