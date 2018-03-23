#!/usr/bin/env bash

random=$(( ($RANDOM % 10) ))
if [ "$random" -lt 5 ]; then
    echo "random was ${random}. Success!"
else
    echo "random was ${random}. You failed."
    exit -1
fi