<?xml version='1.0' encoding='UTF-8'?> <!-- xml en-tête -->
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    >

    <xsl:output method='xml' encoding='UTF-8' indent="yes"/> <!-- Le fichier de sortie est un document xml-->

    <xsl:template match='club'> <!-- On construit un template | match permet  d'associer le template | "club" signifie qu'on prend le noeud -->
    		<club>
    			<xsl:attribute name='id'><xsl:value-of select='@id'/></xsl:attribute>
    			<nom><xsl:value-of select="nom"/></nom>
    			<ville><xsl:value-of select="ville"/></ville>
    		</club>
    </xsl:template>

    <xsl:template match='/'>
    	<clubs>
    		<xsl:apply-templates select="//clubs/club"/>
    	</clubs>
    </xsl:template>

</xsl:stylesheet>