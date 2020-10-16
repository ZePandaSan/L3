# Réponse

## Exercice 1

### Question 1-1

Le programme affiche tous les enfants de la racines ainsi que leurs attributs.

```text
clubs {}
journees {}
```

### Question 1-2

```python
#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Importation de l'API.
import xml.etree.ElementTree as ET

# Chemin vers le fichier xml.
FILE = 'championnat.xml'

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
```

## Exercice 2

### Question 2-1

```python
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
```

### Question 2-2

```python
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
```

## Exercice 3

### Question 3-1

```python
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
```

### Question 3-2

```python
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
```

### Question 3-3

Ne fonctionne pas pour le moment

## Exercice 4

Ne me rien dans rencontresReceveur

## Exercice 5

Ne fonctionne pas pour le moment
