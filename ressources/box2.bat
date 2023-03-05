@echo off
title Machine 2
cls
color 27
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo "                         ________                         "     
echo " _________        .---'''        '''---.                  "  
echo ":______.-':      :  .----------------.  :                 "
echo "| ______  |      | :                  : |                 " 
echo "|:______B:|      | | Machine 2        | |                 "
echo "|:______B:|      | | IP: 172.20.0.12  | |                 "   
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
rem start /wait /b docker attach box2
start /wait /b docker run -it --rm --net my_arp_network --ip 172.20.0.12 --name box2 busybox
pause