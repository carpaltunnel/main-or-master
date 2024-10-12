#!/bin/bash

# NOTE: This is just the example, check the README and add the `morm` function
#           to your .bashrc, .zshrc, etc

function morm () {
    git checkout main
    if [ $? -eq 1 ]
    then
        echo "'main' branch did not exist, trying 'master' ..."
        git checkout master
    fi
}

morm