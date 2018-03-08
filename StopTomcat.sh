#!/bin/sh

# -- By chb@mz.co.kr -- #
# -- On Mar 08, 2018 -- #
# -- Comments : This shell script takes care of starting and stopping
#               the Tomcat services

source /etc/profile

Today=`date +%Y-%-m%d\ %H:%M:%S`
Log=/var/log/tomcat.log
Root=/usr/share/tomcat

for pid in `pidof java`;
do
    kill $pid > /dev/null 2>&1
done
