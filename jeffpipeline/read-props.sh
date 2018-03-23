#!/bin/sh

echo "Trying to read key-value properties"

props="keyval/keyval.properties"
if [ -f "$props" ]; then
    echo "Reading key-values from ${props}"
    while IFS= read -r var
    do
        if [ ! -z "$var" ]; then
            echo "Adding: $var"
            export "$var"
        fi
    done < "$props"
else
    echo "No properties file found at ${props}"
fi

if [ -z "$BUILD_VERSION" ]; then
    echo "BUILD_VERSION is set to ${BUILD_VERSION}. Success!"
else
    echo "BUILD_VERSION is blank. Failure."
    exit -1
fi
