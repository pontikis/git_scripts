#-------------------------------------------------------------------------------
# SCRIPT.........: pushrepo.sh
# ACTION.........: Push dev and master branches from a local repo to Github and Bitbucket
# COPYRIGHT......: Christos Pontikis (http://www.pontikis.gr)
# LICENSE........: MIT (https://opensource.org/licenses/MIT)
#-------------------------------------------------------------------------------

#!/bin/bash

source repoinfo.sh

read -p "Push dev and master of repo $(pwd) to Github and Bitbucket (1=yes otherwhise exit): " opt
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