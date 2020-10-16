#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Importation de l'API.
import xml.etree.ElementTree as ET

# Chemin vers le fichier xml.
FILE = 'championnat.xml'

# Création du parser et récupération de l'arbre XML du document.
root = ET.parse(FILE).getroot()

def verif_nb_match(subtree):
    print("Ne comporte pas 10 journée : ")
    for child in root.findall("journees/journee"):
        if len(child.findall("Rencontre")) != 10:
            print("Journée " + child.attrib["num"])

verif_nb_match(root)