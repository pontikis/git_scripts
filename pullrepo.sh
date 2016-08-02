#-------------------------------------------------------------------------------
# SCRIPT.........: pullrepo.sh
# ACTION.........: Pull dev and master branch from Github to a local repo
# COPYRIGHT......: Christos Pontikis (http://www.pontikis.gr)
# LICENSE........: MIT (https://opensource.org/licenses/MIT)
#-------------------------------------------------------------------------------

#!/bin/bash

source repoinfo.sh

read -p "Pull dev and master from github to repo $(pwd) ? (1=yes otherwhise exit): " opt
if [ "$opt" != "1" ]; then exit; fi

set -xe

git fetch
git checkout dev
git merge github/dev
git checkout master
git merge github/master
git checkout dev
