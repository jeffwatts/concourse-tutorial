#!/bin/sh

echo ".git/ref is ..."
echo `cat concourse-tutorial/.git/ref`

revision=`git rev-parse HEAD`

curl --request POST \
  --url https://api.rollbar.com/api/1/deploy/ \
  --data "{\"access_token\":\"${access_token}\",\"environment\":\"${environment}\",\"revision\":\"${revision}\",\"local_username\":\"${local_username}\"}"
