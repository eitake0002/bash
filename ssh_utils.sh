#!/bin/sh

# Description:
#   Install sshpass
function install-sshpass()
{
  yum -y install sshpass
}

# Description:
#   Make ssh connection with sshpass.
# Usage:
#   sshpass-connect <user> <host> <password>
# Example:
#   sshpass-connect root 192.168.x.x my_pass
function sshpass-connect()
{
  user=$1
  host=$2
  pass=$3
  sshpass -p "${pass}" ssh ${user}@${host}
}

# Description:
#   Get directory.
# Example:
#   scp-get ./my-key.pem root 192.168.0.1 /home/my_home
function scp-get()
{
  key_pass=$1
  user=$2
  host=$3
  dir=$4
  scp -r -i ${key_pass} ${user}@${host}:${dir} ./
}
