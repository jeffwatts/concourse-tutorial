#!/bin/sh

set -e

# task script is in resource-tutorial/job-inputs/ folder
# application input is in gopath/src/github.com/cloudfoundry-community/simple-go-web-app folder
# $GOPATH is gopath/ folder
export GOPATH=$(pwd)/gopath
cd gopath/src/github.com/jeffwatts/war

go test -v ./...
