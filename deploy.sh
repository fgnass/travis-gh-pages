#!/bin/sh

git clone . gh-pages
cd gh-pages
git checkout gh-pages
date >> index.html
git add . && commit -m "Deployed to GitHub Pages"
cp ../.git/config .git
git push origin gh-pages
