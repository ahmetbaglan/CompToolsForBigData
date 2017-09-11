#!/bin/bash
tr A-Z a-z <shakespeare.txt |sed "s/'ll/ will/g" | sed "s/'s/ is/g" | sed "s/'ve/ have/g" | sed 's/-/ /g' | sed  's/[^a-zA-Z0-9\t ]//g'| tr '\t' ' '| tr ' ' '\n'|sort| uniq > tempo.txt
tr A-Z a-z< dict | sort |cat > dict_l.txt
comm -23 tempo.txt dict_l.txt | wc -l



