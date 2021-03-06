#!/bin/bash

if ! git diff --name-only $TRAVIS_COMMIT_RANGE | grep -qvE '(.md$)'
then
  echo "Only docs were updated, not running the CI."
  exit
fi
