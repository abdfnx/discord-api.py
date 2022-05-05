#!/bin/bash

git pull
python3 -m build
twine check dist/*
twine upload dist/*
rm -rf discord_py_api.egg-info
rm -rf dist
