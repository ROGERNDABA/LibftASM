#!/bin/bash

if [ "$#" -eq  "0" ] 
    then
    echo "No arguments supplied"
else
    nasm -f elf64 $1.asm && gcc main.c $1.o 
fi
