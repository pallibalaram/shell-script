#!/bin/bash
PERSON1=$1
PERSON2=$2
DATE=$(date)
echo "$PERSON1: Hello $PERSON2, Good Morning"
echo "$PERSON2: Hi $PERSON1, very Good Morning"
echo "script started executing at: ${DATE} "

read -s 
echo "enter username: USERNAME"
read -s USERNAME
echo "enter password: PASSWORD"
read -s PASSWORD