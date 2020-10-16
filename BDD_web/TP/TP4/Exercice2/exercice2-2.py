#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Importation de l'API.
import xml.etree.ElementTree as ET

# Chemin vers le fichier xml.
FILE = "championnat.xml"

# Création du parser et récupération de l'arbre XML du document.
root = ET.parse(FILE).getroot()

for rencontre in root.find("journees").findall('journee/rencontre'):
    rencontre.remove(rencontre.find("score"))

ET.ElementTree(root.find("journees")).write("rencontres_par_journee.xml")