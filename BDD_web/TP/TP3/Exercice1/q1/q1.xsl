<?xml version='1.0' encoding='UTF-8'?> <!-- xml en-tête -->
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    > 
  <xsl:output method="html" encoding="UTF-8"/> <!-- Le fichier de sortie est un document html-->
  
  <xsl:template match="/"> <!-- On construit un template | match permet  d'associer le template | "/" signifie qu'on prend tous le document-->    
    <html> <!-- Construction d'un fichier html traditionnel -->
      <body>
        <h3>Un club de Ligue 1 saison <xsl:value-of select="(/championnat/@annee)-1"/>-<xsl:value-of select="/championnat/@annee"/> :</h3> 
        <xsl:value-of select=".//ville[1]"/>
        <!-- <xsl:value-of permet d'extraire un élément xml et l'ajouter à notre fichier de sortie-->
    </body>
   </html>
  </xsl:template>
  
</xsl:stylesheet>
