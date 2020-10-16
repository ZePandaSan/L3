#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Importation de l'API.
import xml.etree.ElementTree as ET

# Chemin vers le fichier xml.
FILE = "championnat.xml"

# Création du parser et récupération de l'arbre XML du document.
root = ET.parse(FILE).getroot()

def get_liste_clubs (a_root):
    li=[]

    for club in a_root.findall("clubs/club"):
        li.append(club.attrib["id"])
    
    return li

def pair_est_ordonee(club1, club2, a_root):
    for rencontre in a_root.findall("journees/journee/rencontre"):
        c1=rencontre.find("clubReceveur").text 
        c2=rencontre.find("clubInvite").text 
        if club1 == c1 and club2 == c2:
            return True
    return False

def verif_toutes_les_rencontres(liste_clubs, a_root):
    for c1 in liste_clubs:
        for c2 in liste_clubs:
            if c1 != c2:
                if not pair_est_ordonee(c1,c2,a_root):
                    print("Rencontre non jouée : "+c1+" vs "+c2)

liste=get_liste_clubs(root)
verif_toutes_les_rencontres(liste,root)