#!/bin/sh

git remote rm origin
git remote add origin https://codemastermick:${GH_TOKEN}@github.com/codemastermick/ng-devops.git >/dev/null 2>&1
git pull
git push origin master --quiet
echo "Changes pushed to github"
