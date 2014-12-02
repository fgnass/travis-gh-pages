#!/bin/sh

git clone . gh-pages
cd gh-pages
git checkout gh-pages
date >> index.html
git add . && commit -m "Deployed to GitHub Pages"
git push --force --quiet "https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git" master:gh-pages > /dev/null 2>&1
