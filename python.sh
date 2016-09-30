#!/bin/sh

#------------------------------------
# pyenv
#------------------------------------
alias py-ver='pyenv versions'

# Install python.
# ex: pyins 3.4.1
function py-ins(){
  pyenv install $1
}

# Pyenv global setting.
# ex: py-glo 3.4.1
function py-glo(){
  pyenv global $1
}

#------------------------------------
# One liner
#------------------------------------
function py-one(){
  python -c "print '$1'"
}

#------------------------------------
# Jupyter
#------------------------------------
alias ju='cd ~/py/autopost/jupyter'
alias runju='cd ~/py/autopost/jupyter; jupyter notebook --debug > jupyter_log.log 2>&1 &'
alias killju='pgrep jupyter | xargs kill -9'
