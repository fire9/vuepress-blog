#!/bin/bash

set -e

yarn build

cd docs/.vuepress/dist
echo 'blog.fire9.org' > CNAME

git init
git config user.name "fire9"
git config user.email "fire9@me.com"
git add -A
git commit -m "deploy code"
git remote add origin git@github.com:fire9/fire9.github.io.git
# git push -u origin master
git push -f git@github.com:fire9/fire9.github.io.git master
cd -
