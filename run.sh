#!/bin/bash

if [ "$#" -eq  "0" ]
    then
    echo "No arguments supplied"
else
    for i in "$@"; do
        nasm -fmacho64 $i.s
    done
    gcc  main.c srcs/*.o
fi
