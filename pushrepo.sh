#-------------------------------------------------------------------------------
# SCRIPT.........: pushrepo.sh
# ACTION.........: Push dev and master branches from a local repo to Github and Bitbucket
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

echo -e '\ncurrent dev version ..............................'
echo "local  `git describe dev`"
echo "github `git describe github/dev`"

echo -e '\ncompare local and github dev .....................'
git diff --stat --color dev github/dev

echo -e '\ncurrent master version ...........................'
echo "local  `git describe master`"
echo "github `git describe github/master`"

echo -e '\ncompare local and github master ..................'
git diff --stat --color master github/master

echo -e '\n--------------------------------------------------'

read -p "Push dev and master of repo $(pwd) (1=yes otherwhise exit): " opt
if [ "$opt" != "1" ]; then exit; fi

set -xe

git checkout dev
git push --tags github dev
git push --tags bitbucket dev
git checkout master
git merge dev -m 'Merge dev branch to master'
git push --tags github master
git push --tags bitbucket master
git checkout dev