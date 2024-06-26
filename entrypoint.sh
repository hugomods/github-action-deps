#!/bin/sh -l

if [[ $3 != '' ]]
then
  cd $3
fi

# update modules
if [[ $1 == 'true' ]]
then
  # update recursively
  hugo mod get -u ...
else
  hugo mod get -u
fi

# tidy modules
if [[ $2 == 'true' ]]
then
  hugo mod tidy
fi

git status
