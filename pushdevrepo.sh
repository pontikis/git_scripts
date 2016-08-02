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

echo -e '\n--------------------------------------------------'

read -p "Push dev of repo $(pwd) (1=yes otherwhise exit): " opt
if [ "$opt" != "1" ]; then exit; fi

set -xe

git checkout dev
git push --tags github dev
git push --tags bitbucket dev