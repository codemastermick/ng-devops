#!/bin/bash

if ! git diff --name-only $TRAVIS_COMMIT_RANGE | grep -qvE '(.md$)'
then
currentCommitMessage=`echo "$(cat $1)" | head -1`

  echo "Only docs were updated, not running the CI."
  exit
fi
