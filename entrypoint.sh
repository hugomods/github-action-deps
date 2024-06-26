#!/bin/sh -l

if [[ $3 != '' ]]
then
  cd $3
fi

# update modules
if [[ $1 == 'true' ]]
then
  # update recursively
  MODGET=$(hugo mod get -u ./...)
else
  MODGET=$(hugo mod get -u)
fi

echo "raw=$MODGET" >> $GITHUB_OUTPUT

# tidy modules
if [[ $2 == 'true' ]]
then
  hugo mod tidy
fi
