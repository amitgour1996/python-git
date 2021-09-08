#!/bin/bash

git clone $1
repoName=$(basename $1 | sed 's/.git//')
cd $repoName
ls -1 -d */ | sed 's/.$//' > output.txt
