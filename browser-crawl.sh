#!/bin/bash

filename=test.csv

while read line || [[ -n "$line" ]]; do
    echo ##################
    echo checking $line
    #curl -o /dev/null -s -w "%{http_code}\n"
    /usr/bin/open -a "/Applications/Firefox.app" $line
done < "$filename"
