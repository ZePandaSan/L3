# commande XSLT  

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
On entre les balises XML classiquz
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
<xsl:template match='/'>
		<xsl:copy-of select='.'/>
</xsl:template>

En gros on fait un copier coller
### Sur un noeud 
```XML 
<xsl:template match='/'>
    	<...>
    		<xsl:apply-templates select="..."/>
    	</...>
</xsl:template>




