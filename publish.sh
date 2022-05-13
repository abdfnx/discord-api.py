#!/bin/bash

gh repo sync
vim ./discord/__init__.py
git add .
git commit -m "bump to $1 version"
git push
python3 -m build
twine check dist/*
twine upload dist/*
rm -rf discord_py_api.egg-info
rm -rf dist
tagger "$1" -x
