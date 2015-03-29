#!/bin/bash
# This script runs bench with 32 Mb of hash tables, 2 threads and depth 16, 100 times in a row. It appends into a .txt file the Nodes searched as well as total time.
# I want to check how random are the total nodes searched

for i in {1..100} ; do stockfish bench 32 2 16 >> stocktest.txt 2>&1; done
sed '/Total time\|Nodes searched/!d' stocktest.txt >> stockcorrected.txt
