#!/bin/bash

echo -n "Escolha o alvo: "
read alvo

#echo -n "Escolha a Porta/Portas: "
#read ports

echo -n "Timming 0-5: "
read time

echo " Scanning de Portas TCP [X] "
sudo nmap -T$time -sS $alvo > scanning_$alvo.txt
echo " ---------------------------------------------- " >> scanning_$alvo.txt

echo " Scanning de Portas UDP [X] "
sudo nmap -T$time -sU $alvo >> scanning_$alvo.txt
echo " ---------------------------------------------- " >> scanning_$alvo.txt

echo " Scanning de Serviços [X] "
sudo nmap -T$time -sV $alvo >> scanning_$alvo.txt
echo " ---------------------------------------------- " >> scanning_$alvo.txt

echo " Scanning de Sistema Operacional [X] "
sudo nmap -T$time -O $alvo >> scanning_$alvo.txt
