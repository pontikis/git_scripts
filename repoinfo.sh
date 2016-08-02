#-------------------------------------------------------------------------------
# SCRIPT.........: repoinfo.sh
# ACTION.........: Display repo info
# COPYRIGHT......: Christos Pontikis (http://www.pontikis.gr)
# LICENSE........: MIT (https://opensource.org/licenses/MIT)
#-------------------------------------------------------------------------------

#!/bin/bash

echo '### repo info ####################################'

echo -e '\ngit status .......................................'
git status

echo -e '\nremote repositories ..............................'
git remote -v

echo -e '\nbranches .........................................'
git branch -a

local_dev=`git branch -a | grep -F ' dev'`
if [ -z "$local_dev" ]
then

echo -e '\nlocal dev branch not found ...'

else

echo -e '\ncurrent dev version ..............................'
echo "local  `git describe dev`"
echo "github `git describe github/dev`"

echo -e '\ncompare local and github dev .....................'
git diff --stat --color dev github/dev

fi

echo -e '\ncurrent master version ...........................'
echo "local  `git describe master`"
echo "github `git describe github/master`"

echo -e '\ncompare local and github master ..................'
git diff --stat --color master github/master

if [ ! -z "$local_dev" ]
then

echo -e '\ncompare local dev and master .....................'
git diff --name-status dev master

fi

echo -e '\n--------------------------------------------------'