#-------------------------------------------------------------------------------
# SCRIPT.........: pullmasterrepo.sh
# ACTION.........: Pull master branch from Github to a local repo
# COPYRIGHT......: Christos Pontikis (http://www.pontikis.gr)
# LICENSE........: MIT (https://opensource.org/licenses/MIT)
#-------------------------------------------------------------------------------

#!/bin/bash

echo '##################################################'

echo -e '\ngit status .......................................'
git status

echo -e '\nremote repositories ..............................'
git remote -v

echo -e '\nbranches .........................................'
git branch -a

echo -e '\ncurrent master version ..............................'
echo "local  `git describe master`"
echo "github `git describe github/master`"

echo -e '\ncompare local and github master .....................'
git diff --stat --color master github/master

echo -e '\n--------------------------------------------------'

read -p "Pull master from github to repo $(pwd) ? (1=yes otherwhise exit): " opt
if [ "$opt" != "1" ]; then exit; fi

set -xe

git fetch
git checkout master
git merge github/master