<?xml version='1.0' encoding='UTF-8'?> 
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    > 
  <xsl:output method="html" encoding="UTF-8"/> 
  
  <xsl:template match="/">    
    <html> 
      <body>
        <h3>Un club de Ligue 1 saison <xsl:value-of select="(/championnat/@annee)-1"/>-<xsl:value-of select="/championnat/@annee"/> :</h3> 
        <xsl:value-of select=".//ville[1]"/>
    </body>
   </html>
  </xsl:template>
  
</xsl:stylesheet>
