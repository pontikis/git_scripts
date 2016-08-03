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

Short description
-----------------

### repoinfo.sh

Display repo info

### pushrepo.sh

Push dev and master branches from a local repo to Github and Bitbucket

### pushdevrepo.sh

Push dev branch from a local repo to Github and Bitbucket

### pullrepo.sh

Pull dev and master branches from Github to a local repo

### pulldevrepo.sh

Pull dev branch from Github to a local repo

### pullmasterrepo.sh

Pull master branch from Github to a local repo

Requirements
------------

Add installation path to your PATH. Usually:

```
nano ~/.bash_profile
export PATH="${PATH}:/path/to/git_scripts"
source ~/.bash_profile
```