@echo off
title TcpDumper
cls
color 47
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo "                      _.................._                "
echo "                     | |   TcpDumper    | |               "
echo "                     | | IP: 172.20.0.9 | |               "
echo "                     | |                | |               "
echo "                     | |________________| |               "
echo "                     |                    |               "
echo "                     |                    |               "
echo "                     |   __________       |               "
echo "                     |  |        | |      |               "
echo "                     |__|________|_|______|               "
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
pause
color 07
rem start /wait /b docker attach tcpdumper
start /wait /b docker run -it --rm --net my_arp_network --ip 172.20.0.9 --name tcpdumper tcpdumper
pause