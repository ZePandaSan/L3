# DTD 
- [DTD](#dtd)
  - [Eléments](#eléments)
    - [Elément vide](#elément-vide)
    - [Données](#données)
    - [Données quelconques](#données-quelconques)
    - [Séquences](#séquences)
    - [Déclarer un élément au moins une fois](#déclarer-un-élément-au-moins-une-fois)
    - [Déclarer un élément optionnel](#déclarer-un-élément-optionnel)
    - [Déclarer 0 ou plusieurs éléments](#déclarer-0-ou-plusieurs-éléments)
    - [Déclarer un élément ou un autre](#déclarer-un-élément-ou-un-autre)
    - [Déclarer n'importe quel élément peut importe l'ordre](#déclarer-nimporte-quel-élément-peut-importe-lordre)
  - [Attributs](#attributs)
    - [Déclarer un attribut](#déclarer-un-attribut)
    - [Type d'attribut](#type-dattribut)
    - [Valeur de l'attribut](#valeur-de-lattribut)
  - [Exemple :](#exemple-)
- [Source](#source)
## Eléments 
Pour déclarer un élément, on utilise `ELEMENT`
```XML
<!ELEMENT [Nom élément] [Contenu de l'élément]>
```
### Elément vide 
On utilise le mot clé `EMPTY`.
```XML
<!ELEMENT [Nom élément] EMPTY>
```
### Données 
On utilise le mot clé `#PCDATA`.
```XML
<!ELEMENT [Nom élément] (#PCDATA)>
```
### Données quelconques 
On utilise le mot clé `ANY`.
```XML
<!ELEMENT [Nom élément] ANY>
```
### Séquences 
On sépare les enfants par une `,`.
```XML
<!ELEMENT [Nom élément] (fils1,fils2,...)>
```
### Déclarer un élément au moins une fois 
On utilise `+`.
```XML
<!ELEMENT [Nom élément] (fils1+)>
```
### Déclarer un élément optionnel
On utilise `?`.
```XML
<!ELEMENT [Nom élément] (fils1?)>
```
### Déclarer 0 ou plusieurs éléments
On utilise `*`.
```XML
<!ELEMENT [Nom élément] (fils1*)>
```
### Déclarer un élément ou un autre 
On utilise `|`.
```XML
<!ELEMENT [Nom élément] (fils1|fils2)>
```
### Déclarer n'importe quel élément peut importe l'ordre 
```XML
<!ELEMENT [Nom élément] (fils1|fils2|fils3)*>
```
## Attributs 
### Déclarer un attribut 
Pour délcarer un attribut, on utilise la balise `ATTLIST`.
```XML
<!ATTLIST [Nom élément] [Nom attribut] [Type d'attribut] [Valeur de l'attribut]>
```
### Type d'attribut 
| Type              | Description                                      |
|-------------------|--------------------------------------------------|
| `CDATA`           | L'attribut est une donnée                        |
| `(en1|en2|en3)`   | L'attribut est une liste énnuméré                |
| `ID`              | L'attribut est un identifiant                    |
| `IDREF`           | L'attribut est un identifiant d'un autre élément |
| `IDREFS`          | L'attribut est une liste d'identifiants          |
| `NMTOKEN`         | L'attribut est un nom XML valide                 |
| `NMTOKENS`        | L'attribut est une liste de nom XML valide       |
| `ENTITY`          | L'attribut est une entités                       |
| `NOTATION`        | Le nom de l'attribut est une notation            |
| `xml:`            | L'attribut est une valeur XML prédifinie         |
### Valeur de l'attribut 
| Type              | Description                        |
|-------------------|------------------------------------|
| [valeur]          | La valeur par défaut de l'attribut |
| `#REQUIRED`       | L'attribut est obligatoire         |
| `#INPLIED`        | L'attribut est optionnel           |
| `#FIXED` [valeur] | La valeur de l'attribut est fixé   |
## Exemple : 
Il s'agit de l'exercice 1 de l'examen blanc :
```XML
    <!ELEMENT entraineurs (entraineur+)>
    <!ELEMENT entraineur (nom, (club | nationale)*)>
    <!ATTLIST entraineur id ID #REQUIRED>
    <!ELEMENT club (debut, fin ?)>
    <!ATTLIST club nom CDATA #REQUIRED>
    <!ELEMENT nationale (debut, fin ?)>
    <!ATTLIST nationale nom CDATA #REQUIRED>
    <!ELEMENT nom (#PCDATA)>
    <!ELEMENT debut (#PCDATA)>
    <!ELEMENT fin (#PCDATA)>
```

# Source 
Fiche inspirée par le cours de  https://www.w3schools.com/ et par le sujet blanc disponible du moodle.
