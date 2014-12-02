#!/bin/sh

set

git clone . gh-pages
cd gh-pages
git checkout gh-pages
date >> index.html
git add . && commit -m "Deployed to GitHub Pages"
git remote add github https://github.com/fgnass/travis-gh-pages.git
git push github gh-pages
