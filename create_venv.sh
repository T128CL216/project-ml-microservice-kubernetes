#!/usr/bin/env bash
pip install virtualenv
virtualenv -p /usr/bin/python2 ~/.devops
cd ~/.devops/bin
ln -s ~/.devops/bin/python2 python