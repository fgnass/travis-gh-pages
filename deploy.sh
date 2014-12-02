#!/bin/sh

git clone . gh-pages
cd gh-pages
git checkout gh-pages
date >> index.html
git add . && git commit -m "Deployed to GitHub Pages"
git push --force "https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git" > /dev/null 2>&1
