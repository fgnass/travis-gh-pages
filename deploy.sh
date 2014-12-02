#!/bin/sh

rm -rf _site || exit 0
mkdir _site
cd _site
date >> index.html
git init
git config user.name "Travis-CI"
git config user.email "travis@travis-ci.org"
git add .
git commit -m "Deployed to GitHub Pages"
git push --force "https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git" master:gh-pages > /dev/null 2>&1
