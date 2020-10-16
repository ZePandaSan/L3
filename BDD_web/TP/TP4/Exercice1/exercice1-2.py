#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Importation de l'API.
import xml.etree.ElementTree as ET

# Chemin vers le fichier xml.
FILE = "championnat.xml"

# Création du parser et récupération de l'arbre XML du document.
root = ET.parse(FILE).getroot()

def afficher_enfants(subtree):
    print("IDs des clubs :")
    for child in subtree.findall("clubs/club"):
        print (child.find("nom").text, " : ", child.attrib)
    print("--------------------------------------------------------------")
    print("Numéro de journée :")
    for child in subtree.findall("journees/journee"):
        print(child.find("date").text, " : ", child.attrib)

afficher_enfants(root)
