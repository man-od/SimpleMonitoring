#!/bin/bash

bad_input='^[+-]?[0-9]+([.][0-9]+)?$'

if [[ $1 =~ $bad_input ]]; then
    echo "Error: invalid input"
elif [ $# = 0 ]; then
    echo "Error: parameters not found"
elif [ $# != 1 ]; then
    echo "Error: to many arguments"
else
    echo $1
fi
