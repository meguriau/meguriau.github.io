#! /bin/bash

git checkout master
git add -u .
git commit -m "Update."
git push -v origin refs/heads/master\:refs/heads/master

git checkout gitlab
git merge --no-edit master
git push -v upstream gitlab\:refs/heads/upstream

git checkout master
