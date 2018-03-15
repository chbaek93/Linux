#!/bin/tcsh
 

find -maxdepth 2 -name source 
find / -maxdepth 3 -name source 

# -- iname -> ignore case -- # 
find -mindepth 3 -maxdepth 5 -name source 
find -maxdepth 1 -not -iname "Source"


find / -perm -g=r -type f -exec ls -l {} \;
find / -perm g=r -type f -exec ls -l {} \;

find / -perm 755 -type f -exec ls -l {} \;

find / -maxdepth 1 -empty 
find / -maxdepth 1 -empty -not -name ".*"

# -- Find Big File -- # 
find / -type f -exec ls -s {}\; | sort -n -r | head -5

# -- Find Small File -- # 
find / -type f -exec ls -s {} \; | sort -n | head -5

find / -not -empty -type f -exec ls -s {} \; | sort -n | head -5


find / -type s 
find / -tpye d 
find / -type f 

find / -type f -name ".*"
find -type d -name ".*"

# -- Find Files by Size -- # 
find ~ -size +100M
find ~ -size -100M 
find ~ -size 100M 

find / -type f -name *.zip -size +100M -exec rm -i {} \;"
find / -type d -empty 
find / -type d -empty -exec rmdir {} \;
find / -type f -empty 
find / -type f -not -empty | wc -l

find / -mmin -60 
find / -mtime -1 
find -amin -60 
find / -atime -1 
find / -cmin -60 
find / -ctime -1
