#!/bin/bash

if [ "$#" -eq  "0" ]
    then
    echo "No arguments supplied"
else
    for i in "$@"; do
        nasm -felf64 $i.s
    done
    gcc -m64 main.c *.o
fi
