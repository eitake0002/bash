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

# Description:
#   Create rsa key.
# Usage:
#   create-rsa-key
function create-rsa-key()
{
  ssh-keygen -t rsa
}

# Install pssh with yum.
function install-pssh()
{
  yum -y install pssh
}

# Description:
#   Exec commad on remote server.
#   * You must set key and connect without password beforehand.
function pssh-exec-on-remote()
{
  host=$1
  exec_command=$2
  pssh -H ${host} -i ${exec_command}
}
