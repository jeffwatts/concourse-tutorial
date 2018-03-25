#!/bin/sh

echo "Trying to set key-value properties"

propsdir="keyvalout"
props_file="${propsdir}/keyval.properties"
if [ -d "$propsdir" ]; then
    touch "$props_file"
    echo "Setting values for next job in ${props_file}"
    echo "Adding BUILD_VERSION=fail"
    echo "BUILD_VERSION=fail" >> "${props_file}"
else
    echo "Could not find dir ${propsdir}"
    ls -lR .
fi
