@echo off
title Creation des Containers

rem préparation des containers
echo Preparation de l'environnement docker, merci de patienter...
docker container kill box1 >NUL 2>&1
docker container kill box2 >NUL 2>&1
docker container kill arpspoofer >NUL 2>&1
docker container kill tcpdumper >NUL 2>&1

docker compose up >NUL 2>&1
docker container kill lab1-arpspoofing-box1 >NUL 2>&1
docker container kill lab1-arpspoofing-box2 >NUL 2>&1
docker container kill lab1-arpspoofing-tcpdumper >NUL 2>&1
docker container kill lab1-arpspoofing-arpspoofer >NUL 2>&1

docker build --tag=busybox busybox >NUL 2>&1
docker build --tag=arpspoofer --build-arg http_proxy=$http_proxy --build-arg https_proxy=https_proxy  ressources/arpspoofer >NUL 2>&1
docker build --tag=tcpdumper  --build-arg http_proxy=$http_proxy --build-arg https_proxy=$https_proxy ressources/tcpdumper >NUL 2>&1

rem préparation du network
docker network rm my_arp_network >NUL 2>&1
docker network create --subnet=172.20.0.0/16 my_arp_network >NUL 2>&1


cls
echo Démarrage des container...
title Lancement des Containers

start "BOX 1" ressources\\box1.bat
start "BOX 2" ressources\\box2.bat

start "ARP spoofer" ressources\\arpspoofer.bat
start "TCP-DUMPER" ressources\\tcpdumpers.bat