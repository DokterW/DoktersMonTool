#!/bin/bash
# DoktersMonTool v0.1
# Made by Dr. Waldijk
# Gathers various information and writes it to a specified file.
# This script is meant to be used as cron job.
# Read the README.md for more info.
# By running this script you agree to the license terms.
# -----------------------------------------------------------------------------------
# Remember to fill out below where you want the file to be saved and what it should be called.
# -----------------------------------------------------------------------------------
DOMOTO="Dokter's Monitor Tool"
DOMOTOVER="0.1"
# Folder location where to save file.
DOMOTOLOC=""
# Name of save file.
DOMOTOFIL=""
# Gather info.
LOCIP=$(hostname -I | cut -c 1-13)
EXTIP=$(dig myip.opendns.com @resolver1.opendns.com +short)
UPTIME=$(uptime -p)
# Write to file.
echo "$DOMOTO v$DOMOTOVER" > $DOMOTOLOC$DOMOTOFIL
date "+%Y-%m-%d %H:%M:%S %p" >> $DOMOTOLOC$DOMOTOFIL
echo "----------------------------------------------------------------" >> $DOMOTOLOC$DOMOTOFIL
echo "Uptime: $UPTIME" >> $DOMOTOLOC$DOMOTOFIL
echo "Local IP: $LOCIP" >> $DOMOTOLOC$DOMOTOFIL
echo "External IP: $EXTIP" >> $DOMOTOLOC$DOMOTOFIL
