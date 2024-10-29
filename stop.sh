#!/bin/bash

pg_dump -cC --inserts -U freecodecamp worldcup > worldcup.sql
yes | sudo apt-get install rsync
rsync -a --exclude={'.*','gitproject'} ./ ./gitproject


cd gitproject
git add .
git commit -m "$(date)"
git push -u origin main


