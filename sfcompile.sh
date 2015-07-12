#!/bin/bash
git clone https://github.com/official-stockfish/Stockfish.git
cd Stockfish/src
make -j2 profile-build ARCH=x86-64            #This compiles using 2 cores/threads
mv stockfish /usr/games
cd /home/isaac/.polyglot/
mv Stockfish_*.ini Stockfish_$(date +%d%m%y)_64.ini   #This renames the Stockfish.ini file to the today's date so that we keep sync with the stockfish's executable
cd
cd /home/isaac/Games/sf
rm -R Stockfish

#This script auto-downloads, compiles, moves the executable of stockfish to /usr/games and rename the .ini file of polyglot to the newest SF version so that it is ready to use with xboard. The idea is to execute it with permission (sudo) because moving a file in /usr/games requires permission and deleting Stockfish folder also requires permissions.
