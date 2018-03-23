#!/bin/tcsh 

# -- Create a Screen -- #
screen -S myterminal 

# -- List of Screen -- #
screen -ls 

tty 

# -- Detach of Screen -- #
screen -d 3480 

# -- reconnect the screen -- #
screen -r 3480 
