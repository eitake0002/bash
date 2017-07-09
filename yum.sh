
# Description:
#   Add epel repository on CentOS6
function add-epel-repo()
{
  rpm -ivh http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
}
