#!/bin/bash
./timeseal.Linux 167.114.65.195 5000 -p 5501 & 
xboard -clockFont "Sans 28" -size 72 -ics -icshost localhost -icsport 5501 -icslogon =/home/isaac/Games/sf/stockfishstart.bin -zp -fUCI -fcp polyglot -zippyGameEnd \"lin0\\nlin1\\nlin2\\nlin3\\nlin4\\nlin5\\nlin6\"
