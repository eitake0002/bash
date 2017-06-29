#!/bin/sh

# Install speedmeter.
function install-speedmeter()
{
  yum -y install python-urwid
  wget http://excess.org/speedometer/speedometer-2.8.tar.gz
  tar -xvzf speedometer-2.8.tar.gz
  cp speedmeter-2.8/speedometer.py /usr/local/bin/speedometer
  chmod 755 /usr/local/bin/speedometer 
}

# Monitor eth1, eth0.
function check-speedmeter()
{
  check-speedmeter='speedmeter -rx eth0 -tx eth0 -rx eth1 -tx eth1'
}

# Install dstat
function install-dstat()
{
  yum -y install dstat
}

# Show main resources with dstat.
function dstat-mains()
{
  dstat -tclndmsp
}

# Install htop.
function install-htop()
{
  yum -y install htop
}

# Execute htop.
function htop-exe()
{
  htop
}

