# git_scripts
===============

Common workflow
---------------

These scripts require to use the following workflow:

* Create repository in Github https://github.com/new
* Clone repository 
```
git clone git@github.com:username/repo.git
```
* Go to repo folder
```
cd repo
```

* Rename remote origin
```
git remote rename origin github
```
* Create dev branch
```
git branch -b dev
```
* Create first tag
```
git tag -a v0.1.0 -m "Just started"
```
* Push 
```
git checkout dev
git push --tags github dev
git checkout master 
git push --tags github master 
```
* Import repository to Bitbucket (optional) https://bitbucket.org/repo/import
* Add Bitbucket as remote
```
git remote add bitbucket git@bitbucket.org:username/repo.git
```
