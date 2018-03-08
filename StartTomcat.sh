#!/bin/sh

# -- By chb@mz.co.kr -- #
# -- On Mar 08, 2018 -- #
# -- Comments : This shell script takes care of starting and stopping
#               the Tomcat services

source /etc/profile

Today=`date +%Y-%-m%d\ %H:%M:%S`
Log=/var/log/tomcat.log
Root=/usr/share/tomcat

cd $Root
for i in `ls -d -1 $PWD/** | grep startup_ | grep -v remote`;
do
    su tomcat - -c  $i
    sleep 1
done
echo "$Today Starting Tomcat Daemon .." >> $Log
