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
### La balise match 




