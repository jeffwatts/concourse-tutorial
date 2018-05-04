#!/bin/sh

echo `cat .git/HEAD`

revision=`cat .git/ref`

curl --request POST \
  --url https://api.rollbar.com/api/1/deploy/ \
  --data "{\"access_token\":\"${access_token}\",\"environment\":\"${environment}\",\"revision\":\"${revision}\",\"local_username\":\"${local_username}\"}"
