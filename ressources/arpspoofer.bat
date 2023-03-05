@echo off
title ARP SPOOFER
cls
color 47
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo "                         _nnnn_      ,................,   "
echo "                        dGGGGMMb     | ARP SPOOFER    |   "
echo "                       @p~qp~~qMb    | IP: 172.20.0.8 |   "
echo "                       M|@||@) M|   _;................'   "
echo "                       @,----.JM| -'                      "
echo "                      JS^\__/  qKL                        "
echo "                     dZP        qKRb                      "
echo "                    dZP          qKKb                     "
echo "                   fZP            SMMb                    "
echo "                   HZM            MMMM                    "
echo "                   FqM            MMMM                    "
echo "                 __| \.        |\dS^qML                   "
echo "                 |    `.       | `' \Zq                   "
echo "                _)      \.___.,|     .'                   "
echo "                \____   )MMMMMM|   .'                     "
echo "                     `-'       `--'                       "
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
pause
color 07
rem start /wait /b docker attach arpspoofer
start /wait /b docker run -it --rm --net my_arp_network --ip 172.20.0.8 --name arpspoofer arpspoofer
pause