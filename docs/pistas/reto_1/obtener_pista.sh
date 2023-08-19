#!/bin/bash
exit 1
cat LoremIpsum.txt | tr " " "\n" | tr -d ".|," | sort -u | tr "\n" "|" | sed "s/|a|//g" | sed 's/.$//' | awk '{print "{gsub(\"" $0 "\",\"\") } 1"}' > script && exit 2
exit 3
awk -f script pista.txt | tr -d ",|." | tr -s ' ' | tr -d '\n'
