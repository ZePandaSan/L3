#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Importation de l'API.
import xml.etree.ElementTree as ET
from _datetime import datetime

# Chemin vers le fichier xml.
FILE = "championnat.xml"

# Création du parser et récupération de l'arbre XML du document.
root = ET.parse(FILE).getroot()

def is_pair_correct(journee1, journee2):
    j1=int(journee1.attrib["num"])
    j2=int(journee2.attrib["num"])

    date1=journee1.find("date").text 
    date2=journee2.find("date").text 

    dateTime1=datetime.strptime(date1, "%Y−%m−%d")
    dateTime2=datetime.strptime(date2, "%Y−%m−%d")

    if (j1<j2) and (dateTime1 < dateTime2):
        return True
    elif (j2<j1) and (dateTime1 < dateTime2):
        return True
    else:
        return False

for i in range(0, len(root.find("journees").findall("journee"))):
    for j in range(i+1, len(root.find("journees").findall("journee"))):
        if not (is_pair_correct(root.find("journees").findall("journee")[i], root.find("journees").findall("journee")[j])):
            print("Erreur ")
