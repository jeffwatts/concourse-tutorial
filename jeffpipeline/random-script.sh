#!/bin/sh

set -e -x

#random=$(( ($RANDOM % 10) ))
#if [ "$random" -lt 5 ]; then
#    echo "random was ${random}. Success!"
#else
#    echo "random was ${random}. You failed."
#    exit -1
#fi

git log --topo-order --format="%aE %h %s" 9b1e79c71f45e..HEAD
echo `git log --topo-order --format="%aE %h %s" 9b1e79c71f45e..HEAD`
