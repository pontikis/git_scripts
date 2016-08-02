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

read -p "Pull dev and master from github to repo $(pwd) ? (1=yes otherwhise exit): " opt
if [ "$opt" != "1" ]; then exit; fi

set -xe

git fetch
git checkout dev
git merge github/dev
git checkout master
git merge github/master
git checkout dev
