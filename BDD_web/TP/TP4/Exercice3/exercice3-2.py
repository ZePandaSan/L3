#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Importation de l'API.
import xml.etree.ElementTree as ET

# Chemin vers le fichier xml.
FILE = "championnat.xml"

# Création du parser et récupération de l'arbre XML du document.
root = ET.parse(FILE).getroot()

def get_liste_clubs(a_root):
    li = []

    for club in a_root.findall("clubs/club"):
        li.append(club.attrib["id"])

    return li

def get_goal_a_virage(li,gav,a_root):
    for club in li :
        gav[club]=[0,0]

    for rencontre in a_root.findall("journees/journee/rencontre"):
        clubReceveur=rencontre.find("clubReceveur").text 
        clubInvite=rencontre.find("clubInvite").text 
        butMarque=rencontre.find("score").text.split()[0]
        butEncaisse=rencontre.find("score").text.split()[1]

        gav[clubReceveur][0]+=int(butMarque)
        gav[clubReceveur][0]+=int(butEncaisse)

        gav[clubInvite][0]+=int(butEncaisse)
        gav[clubInvite][1]+=int(butMarque)

liste=get_liste_clubs(root)
goal_a_virage={}
get_goal_a_virage(liste,goal_a_virage,root)
print(goal_a_virage)

