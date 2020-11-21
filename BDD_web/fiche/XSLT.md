# XSLT  
- [XSLT](#xslt)
  - [1- En-tête](#1--en-tête)
  - [2- Feuille de style](#2--feuille-de-style)
  - [3- Sortie](#3--sortie)
    - [Vers html](#vers-html)
    - [Vers XML](#vers-xml)
  - [4- Construction du modèle](#4--construction-du-modèle)
    - [L'attribut match](#lattribut-match)
      - [Prendre le document](#prendre-le-document)
      - [Prendre une partie de document](#prendre-une-partie-de-document)
  - [5- Contenu du modèle](#5--contenu-du-modèle)
    - [html](#html)
    - [XML](#xml)
  - [6- La séléction de valeur](#6--la-séléction-de-valeur)
    - [L'attribut select](#lattribut-select)
  - [7- Appliquer le template](#7--appliquer-le-template)
    - [Sur tous le document](#sur-tous-le-document)
    - [Sur un noeud](#sur-un-noeud)
  - [Autre opérations](#autre-opérations)
    - [For each](#for-each)
    - [Sort](#sort)
    - [If](#if)
    - [Choose](#choose)
    - [Nommer un template](#nommer-un-template)
    - [Appeler un template](#appeler-un-template)
    - [Attribut](#attribut)
    - [Retirer un noeud](#retirer-un-noeud)
## 1- En-tête
Il s'agit de l'en tête XML standard
```XML
<?xml version='1.0' encoding='UTF-8'?>
``` 

## 2- Feuille de style 
Définit la transformation 
```XML
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  ...
</xsl:stylesheet>
```

## 3- Sortie 
Définit la sortie 
### Vers html
```XML
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
```
### Vers XML
```XML 
<xsl:output method="xml" encoding="UTF-8"/>
```

## 4- Construction du modèle 
On va construire le modèle avec 
```XML
<xsl:template match="...">
  ...
</xsl:template>
```
### L'attribut match 
L'attribut match est utilisé pour associer un modèle à un élément XML. La valeur de l'attribut match est une expression XPath.
#### Prendre le document
```XML
<xsl:template match="/">
  ...
</xsl:template>
```
#### Prendre une partie de document
|TP3 Exercice1 - Question 2|
```XML
<xsl:template match="club">
  ...
</xsl:template>
```
Ici le noeud club est sélectionner

## 5- Contenu du modèle 
### html 
On entre les balises html classique
```XML
<html>
  <body>
    ...
  </body>
</html>
```
### XML
On entre les balises XML classique
```XML
<club>
  ...
</club>
``` 

## 6- La séléction de valeur
On va utiliser la balise value-of.
```XML
<xsl:value-of select=""/>
```
### L'attribut select
L'attribut select contient généralement une expression XPath.
```XML
<xsl:value-of select="nom"/>
```
Ici la balise XML nom est afficher 

## 7- Appliquer le template
Pour afficher le template on va d'abbord construire un modèle en prenant le document (cf 4-) ensuite on va appliquer celui-ci sur un noeud précise ou sur tous le documents.
### Sur tous le document
```XML
<xsl:template match='/'>
	<xsl:copy-of select='.'/>
</xsl:template>
```

En gros on fait un copier coller
### Sur un noeud 
```XML 
<xsl:template match='/'>
    	<...>
    		<xsl:apply-templates select="..."/>
    	</...>
</xsl:template>
```

## Autre opérations
### For each 
Est utilisé pour sélectionner chaque élément XML d'un ensemble de nœuds spécifié. 
```XML
<xsl:for-each select='...'>
	<xsl:sort select='...'/>
    		<xsl:apply-templates select='...'/>
</xsl:for-each>
```

### Sort
Pour trier la sortie
```XML
<xsl:sort select="..."/>
```

### If
Pour mettre un test conditionnel.
```XML
<xsl:if test="...">
  ...
</xsl:if> 
```

### Choose
Pour insérer un test conditionnel multiple par rapport au fichier XML. Les balises Where et otherwize doivent être utilisé.
```XML
<xsl:choose>
  <xsl:when test="expression">
    ...
  </xsl:when>
  <xsl:otherwise>
    ...
  </xsl:otherwise>
</xsl:choose>
```

### Nommer un template 
On peut nommer un template pour pouvoir le réutiliser dans un autres. Les balises param et copy-of sont utiliser pour définir un paramétre est copier un élément
```XML
<xsl:template name='...'>
	<xsl:param name='...'/>
	<xsl:copy-of select='...'/>
</xsl:template>
```

### Appeler un template 
Le template nommé est ensuite appelé.
```XML
<xsl:template match='/'>
	<xsl:call-template name='...'>
		<xsl:with-param name='...' select='...'/>
	</xsl:call-template>
</xsl:template>
```

### Attribut 
On peut également définir un attribut.
```XML
<xsl:attribute name='...'><xsl:value-of select='../@...'/></xsl:attribute>
```

### Retirer un noeud 
```XML
<xsl:template match="node()|@*">
	<xsl:copy>
		<xsl:apply-templates select="node()|@*"/>
	</xsl:copy>
</xsl:template>

<xsl:template match="..."/>
```