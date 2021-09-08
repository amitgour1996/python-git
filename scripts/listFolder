#!/bin/bash

git clone $1
repoName=$(basename https://git.ellucian.com/scm/dpe/appd-ansible-play.git | sed 's/.git//')
cd $repoName
ls -1 -d */ | sed 's/.$//' > output.txt
