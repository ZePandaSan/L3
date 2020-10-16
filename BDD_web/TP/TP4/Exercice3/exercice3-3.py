#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Importation de l'API.
import xml.etree.ElementTree as ET

# Chemin vers le fichier xml.
FILE = "championnat.xml"

# Création du parser et récupération de l'arbre XML du document.
root = ET.parse(FILE).getroot()

#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Importation de l'API.

# Chemin vers le fichier xml.
FILE = "championnat.xml"

# Création du parser et récupération de l'arbre XML du document.
root = ET.parse(FILE).getroot()


def get_liste_clubs(a_root):
    li = []

    for club in a_root.findall("clubs/club"):
        li.append(club.attrib["id"])

    return li


def get_bete_noir(club, dic, a_root):
    maxClub = club
    scoreMax=0 
    

    for rencontre in a_root.findall("journees/journee/rencontre"):
        clubReceveur = rencontre.find("clubReceveur").text
        clubInvite = rencontre.find("clubInvite").text
        butMarque = rencontre.find("score").text.split()[0]
        butEncaisse = rencontre.find("score").text.split()[1]

        if club==clubReceveur:
            if butMarque>scoreMax:
                scoreMax=butMarque
                maxClub=clubInvite
        if club==clubInvite:
            if butEncaisse>scoreMax:
                scoreMax=butEncaisse
                maxClub=clubReceveur
    return maxClub



liste = get_liste_clubs(root)
est_la_bete_noir_de = {}
for club in liste :
    est_la_bete_noir_de[club]=[0,0]

for rencontre in root.findall("journees/journee/rencontre"):
    clubReceveur = rencontre.find("clubReceveur").text
    clubInvite = rencontre.find("clubInvite").text
    butMarque = rencontre.find("score").text.split()[0]
    butEncaisse = rencontre.find("score").text.split()[1]

    est_la_bete_noir_de[clubReceveur][0] += int(butMarque)
    est_la_bete_noir_de[clubReceveur][0] += int(butEncaisse)

    est_la_bete_noir_de[clubInvite][0] += int(butEncaisse)
    est_la_bete_noir_de[clubInvite][1] += int(butMarque)

for club in liste:
    adv_favori = get_bete_noir(club, est_la_bete_noir_de, root)
    print(club+" a marqué le plus de but contre " +adv_favori)
