#!/bin/bash

# Task 1
mv personnages/super\ heros/hommes/sans\ cap/linuxman personnages/mascottes/tux

# Task 2
mv personnages/super\ heros personnages/comics

# Task 3
echo "Bruce Wayne hides behind this character" > personnages/comics/hommes/cape/batman

# Task 4
echo "he lives in Gotham" >> personnages/comics/hommes/cape/batman

# Task 5
echo "Homer Simpson hides behind this character" > personnages/comics/hommes/sans\ cap/daredevil

# Task 6
echo "daredevil is a blind comic character" > personnages/comics/hommes/sans\ cap/daredevil

# Task 7
cat personnages/comics/hommes/cape/batman personnages/comics/hommes/sans\ cap/daredevil > personnages/mascottes/mixdarbat

# Task 8
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root" 
    exit 1
fi

# Task 9
useradd -m fanboy

# Task 10
cp -r personnages /home/fanboy/

# Task 11
chown -R fanboy:fanboy /home/fanboy/personnages

# Task 12
ln -s /home/fanboy/personnages /home/fanboy/persofanboy

# Task 13
cp -r personnages /home/valentin/
ln -s /home/valentin/personnages /home/valentin/perso_valentin

# Task 14
ls -R /home/fanboy/personnages > /home/fanboy/14.txt

# Task 15
grep -v "total" /home/fanboy/14.txt > /home/fanboy/15.txt

# Task 16
history | tail -n 250 | grep -v " cd " > /home/fanboy/myhistory
