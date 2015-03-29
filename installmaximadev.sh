#!/bin/bash   
git clone http://git.code.sf.net/p/maxima/code /home/isaac/Downloads/Programs/maxima-code
cd /home/isaac/Downloads/Programs/maxima-code
sh bootstrap
./configure
make 
make install
cd ..
rm -R maxima-code
