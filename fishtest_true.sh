#!/bin/sh
exec curl --silent http://tests.stockfishchess.org/tests | grep 'Active' -A3 | sed 's/<h3>//' | tr '\n' ' '| sed -r 's/[^0-9 .]//g; s/ +/ /g; s/^ //' |sed '$a\' ->>/home/isaac/Documents/fishteststuff/fishtest.txt;

