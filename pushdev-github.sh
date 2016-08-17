#-------------------------------------------------------------------------------
# SCRIPT.........: pushdev-github.sh
# ACTION.........: Push only dev only to Github without show repo info and without confirmation
# COPYRIGHT......: Christos Pontikis (http://www.pontikis.gr)
# LICENSE........: MIT (https://opensource.org/licenses/MIT)
#-------------------------------------------------------------------------------

#!/bin/bash

set -xe

git checkout dev
git push --tags github dev
