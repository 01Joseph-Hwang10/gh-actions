#!/bin/bash

set -e

# Set Git config
git config --local user.email "actions@github.com"
git config --local user.name "Github Actions"

# Merge master forward to specified branch
git fetch --unshallow
git checkout -f $FORWARD_TO --
git pull
git merge --no-ff master -m "Auto-merge master to $FORWARD_TO"
git push