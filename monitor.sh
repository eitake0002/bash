#!/bin/sh

# Description:
#   Install speedmeter.
# Usage:
#   install-speedmeter
function install-speedmeter()
{
  yum -y install python-urwid
  wget http://excess.org/speedometer/speedometer-2.8.tar.gz
  tar -xvzf speedometer-2.8.tar.gz
  cp speedmeter-2.8/speedometer.py /usr/local/bin/speedometer
  chmod 755 /usr/local/bin/speedometer 
}

# Description:
#   Monitor eth1, eth0.
# Usage:
#   monitor-eth
function monitor-eth()
{
  speedmeter -rx eth0 -tx eth0 -rx eth1 -tx eth1
}

# Description:
#   Install dstat.
# Usage:
#   install-dstat
function install-dstat()
{
  yum -y install dstat
}

# Description:
#   Monitoring main resources on linux with dstat command.
# Usage:
#   dstat-main
function dstat-main()
{
  dstat -tclndmsp
}

# Description:
#   Install htop.
# Usage:
#   install-htop
function install-htop()
{
  yum -y install htop
}

# Description:
#   Execute htop.
# Usage:
#   exec-htop
function exec-htop()
{
  htop
}

# Description:
#   Install cpulimit. When process cpu resource must be limited, using.
# Usage:
#   install-copulimit
function install-cpulimit()
{
  yum -y install cpulimit
}

# Description:
#   Show cpulimit main usage.
# Usage:
#   show-usage-cpulimit
function show-usage-cpulimit(){
    echo 'cpulimit -l <percentage> -p <process_id>'
    echo 'cpulimit -l 80 -p 21906'
}
