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

def ajouter_rencontre(rencontre, a_root):
    newRencontre=ET.SubElement(a_root, "rencontre")
    ET.SubElement(newRencontre, "clubReceveur").text=rencontre.find("clubReceveur").text 
    ET.SubElement(newRencontre, "clubInvite").text=rencontre.find("clubInvite").text 
    ET.SubElement(newRencontre, "score").text=rencontre.find("score").text 


liste=get_liste_clubs(root)

for club in liste:
    c=root.find("clubs/club[@id=\""+str(club)+"\"]")
    rencontres=ET.SubElement(c, "rencontresReceveur")
    for rencontre in root.find("journees").findall("journee/rencontre[clubRecveur=\""+str(club)+"\"]"):
        ajouter_rencontre(rencontre,rencontres)

tree=ET.ElementTree(root)
tree.write("clubs_liste.xml")