#-------------------------------------------------------------------------------
# SCRIPT.........: pulldevrepo.sh
# ACTION.........: Pull dev branch from Github to a local repo
# COPYRIGHT......: Christos Pontikis (http://www.pontikis.gr)
# LICENSE........: MIT (https://opensource.org/licenses/MIT)
#-------------------------------------------------------------------------------

#!/bin/bash

source repoinfo.sh

read -p "Pull dev from github to repo $(pwd) ? (1=yes otherwhise exit): " opt
if [ "$opt" != "1" ]; then exit; fi

set -xe

git fetch
git checkout dev
git merge github/dev