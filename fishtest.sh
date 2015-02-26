#!/bin/sh
while [ true ]
do
exec curl --silent http://tests.stockfishchess.org/tests | grep 'Active' -A3 | sed 's/<h3>//' ->>/home/isaac/fishtest.txt; 
sleep 60m  #time between 2 executions of the command above
clear;
done