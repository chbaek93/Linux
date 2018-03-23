#!/bin/tcsh 

# -- 
fuser -u /var/log/messages 
fuser /var/log/messages 

fuser -vn tcp 22

# -- Kill -- # 
fuser -kn tcp http 
