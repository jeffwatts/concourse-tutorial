#!/bin/sh

echo "Trying to set key-value properties"

propsdir="keyvalout"
props_file="${propsdir}/keyval.properties"
if [ -d "$propsdir" ]; then
    touch "$props_file"
    echo "Setting values for next job in ${props_file}"
    cur_date=`date +%s`
    echo "Adding BUILD_VERSION=1.0.0-${cur_date}"
    echo "BUILD_VERSION=1.0.0-abcdef-${cur_date}" >> "${props_file}"
else
    echo "Could not find dir ${propsdir}"
    ls -lR .
fi
