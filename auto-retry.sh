#!/bin/bash

set -x 

# Because the entire package installation and build process is very long, 
# it may fail due to issues such as insufficient network or disk resources. 
# Therefore, by retrying as many times as possible during this Run process, 
# you can avoid rebuilding again.
RETRY=3;
while [[ $RETRY != 0 ]]; do
    $@

    [[ $? == 0 ]] && break;
    echo "Error occured, retry after 3 seconds...";
    RETRY=$((RETRY-1));
    sleep 3;
done
