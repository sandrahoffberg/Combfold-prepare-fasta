#!/usr/bin/env bash

if [ $# -eq 0 ]; then
    echo "No arguments supplied"
else
    echo "args:"
    for i in $*; do 
        echo $i 
    done
    echo ""
fi


if [ -z ${1} ]; then
    json_file=$(find -L ../data -name "*.json")
else
    json_file=${1}
fi

json_count=$(echo $json_file | wc -w)

if [ -z ${2} ]; then
    max_af_size=1800
else
    max_af_size=${2}
fi