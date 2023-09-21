#!/bin/bash

set -e

# Set Git config
git config --local user.email "actions@github.com"
git config --local user.name "Github Actions"

# Fetch all branches
git fetch --unshallow

# Merge $MERGE_FROM to $FORWARD_TO
git checkout -f $FORWARD_TO --
git pull
git merge --no-ff $MERGE_FROM -m "chore: Auto-merge master to $FORWARD_TO"
git push

# Return to $MERGE_FROM
git checkout -f $MERGE_FROM --
