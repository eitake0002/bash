
# UTILS
alias ll='ls -la'
alias sr='source /Users/b-engineer-takeuchi/.bash_profile'

# Vagrant 
alias vag='cd /Users/b-engineer-takeuchi/Vagrant/CentOS65'
alias lusc='cd /Users/b-engineer-takeuchi/Vagrant/lusc_vagrant'
alias toshin='cd /Users/b-engineer-takeuchi/Vagrant/toshin'

# SSH
alias bas='cd /Users/b-engineer-takeuchi/Desktop/others; ssh -i autopost-bastion-bastion.pem bastion@52.192.180.151'
alias sshconfig='vim ~/.ssh/config'
alias bas-prod='awskeys-auto; ssh -i autopost-bastion-takeuchi.pem takeuchi@52.192.180.151'

# Alias
alias toshinfile='cd /Users/b-engineer-takeuchi/Desktop/toshin'
alias awskeys-auto='cd /Users/b-engineer-takeuchi/Dropbox/aws-keys/autopost'

# Added by Canopy installer on 2016-06-20
# VIRTUAL_ENV_DISABLE_PROMPT can be set to '' to make the bash prompt show that Canopy is active, otherwise 1
alias activate_canopy="source '/Users/b-engineer-takeuchi/Library/Enthought/Canopy_64bit/User/bin/activate'"
VIRTUAL_ENV_DISABLE_PROMPT=1 source '/Users/b-engineer-takeuchi/Library/Enthought/Canopy_64bit/User/bin/activate'
alias awskeys='cd /Users/b-engineer-takeuchi/Dropbox/aws-keys/emr'

##### Toshin CHEF #####
alias chefrepo='cd /Users/b-engineer-takeuchi/cl-toshin-owenedmedia-chef/'
alias cl='cd /Users/b-engineer-takeuchi/cl-toshin-owenedmedia-chef'
alias chefrepo='cd /Users/b-engineer-takeuchi/cl-toshin-owenedmedia-chef/chef-repo'
alias reci='cd /Users/b-engineer-takeuchi/cl-toshin-owenedmedia-chef/chef-repo/cookbooks/setup-wordpress/recipes'
alias temp='cd /Users/b-engineer-takeuchi/cl-toshin-owenedmedia-chef/chef-repo/cookbooks/setup-wordpress/templates/default'
function kn() {
  cd /Users/b-engineer-takeuchi/cl-toshin-owenedmedia-chef/chef-repo; 
  knife solo bootstrap toshin-production;
}

function kn-stg() {
  cd /Users/b-engineer-takeuchi/cl-toshin-owenedmedia-chef/chef-repo;
  knife solo bootstrap toshin-stg;
}

##### clorets #####
alias clo='cd /Users/b-engineer-takeuchi/Vagrant/clorets'
