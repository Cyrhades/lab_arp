@echo off
title Machine 1
cls
color 17
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo "                         ________                         "     
echo " _________        .---'''        '''---.                  "  
echo ":______.-':      :  .----------------.  :                 "
echo "| ______  |      | :                  : |                 " 
echo "|:______B:|      | | Machine 1        | |                 "
echo "|:______B:|      | | IP: 172.20.0.11  | |                 "   
echo "|:______B:|      | |                  | |                 "   
echo "|         |      | |                  | |                 "       
echo "|:_____:  |      | |                  | |                 "       
echo "|    ==   |      | :                  : |                 "      
echo "|       O |      :  '----------------'  :                 "     
echo "|       o |      :'---...________...---'                  "   
echo "|       o |-._.-i___/'             \._                    "   
echo "|'-.____o_|   '-.   '-...______...-'  `-._                "  
echo ":_________:      `.____________________   `-.___.-.       "
echo "                 .'.eeeeeeeeeeeeeeeeee.'.      :___:      "
echo "              .'.eeeeeeeeeeeeeeeeeeeeee.'.                "
echo "              :____________________________:              "
echo "                                                          "
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
pause
color 07
rem start /wait /b docker attach box1
start /wait /b docker run -it --rm --net my_arp_network --ip 172.20.0.11 --name box1 busybox
pause