#!/bin/sh

##### Django #####
alias jango='cd /home/ec2-user/py/'
alias jango-version='python -c "import django; print(django.get_version())"'
alias runjango='cd /home/ec2-user/py/; python manage.py runserver 0.0.0.0:8000 &'
alias debugsql='cd /home/ec2-user/py/; python manage.py debugsqlshell'
alias create-super-user='python manage.py createsuperuser'
alias api='cd /home/ec2-user/py/mysite/api;'
alias mysite='cd /home/ec2-user/py/mysite/mysite/'
alias mig='cd /home/ec2-user/py/autopost/migrate/'

##### Jupyter #####
alias ju='cd /home/ec2-user/py/autopost/jupyter'
alias runju='cd /home/ec2-user/py/autopost/jupyter; jupyter notebook --debug > jupyter_log.log 2>&1 &'
alias killju='pgrep jupyter | xargs kill -9'

#### Python ####
alias auto='cd /home/ec2-user/py/autopost'
alias com='cd /home/ec2-user/py/autopost/management/commands'
alias tools='cd /home/ec2-user/py/tools'
alias rds='cd /home/ec2-user/py/tools/mysql'

