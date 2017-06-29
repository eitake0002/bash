#!/bin/sh

# Description:
#   Install x window packages(GNOME)
# Usage:
#   install-xwindow-packages
function install-xwindow-packages()
{
  yum -y groupinstall "X Window System"
  yum -y groupinstall "Desktop"
  yum -y groupinstall "General Purpose Desktop"
  yum -y group install "gnome-desktop"
}

# Description:
#   Install vnc-server
# Usage:
#   install-vnc-server
function install-vnc-server()
{
  yum -y install tigervnc-server
}

# Description:
#   Start vnc server.
# Usage:
#   start-vnc-server
function start-vnc-server()
{
  vncserver :1
}

# Description:
#   Start vns server with geometry.
# Usage:
#   start-vnc-server-geo <width> <height>
# Example:
#   start-vnc-server-geo 800 600
function start-vnc-server-geo()
{
  width=$1
  height=$2
  vncserver -geometry ${width}x${height}
}

