#-------------------------------------------------------------------------------
# SCRIPT.........: pulldev-github.sh
# ACTION.........: Pull from Github and merge only dev without show repo info and without confirmation
# COPYRIGHT......: Christos Pontikis (http://www.pontikis.gr)
# LICENSE........: MIT (https://opensource.org/licenses/MIT)
#-------------------------------------------------------------------------------

#!/bin/bash

set -xe

git fetch
git checkout dev
git merge github/dev