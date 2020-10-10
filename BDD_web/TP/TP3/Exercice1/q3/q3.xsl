<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    >

    <xsl:output method='html' encoding='UTF-8' indent="yes"/>


    <xsl:template match='/'>
    	<html>
    		<body>
    			<h2>Les clubs de Ligue 1 saison 2014-2015</h2>
    			<table border='1'>
    				<thead>
    					<tr>
    						<th>ville</th>
    						<th>club</th>
    					</tr>
    				</thead>
    				<tbody>
    					<xsl:for-each select='//clubs/club'>
    						<xsl:sort select='ville'/>
    						<xsl:apply-templates select='.'/>
    					</xsl:for-each>
    				</tbody>
    			</table>
    		</body>
    	</html>
    </xsl:template>
    <xsl:template match='club'>
    	<tr>
    		<td><xsl:value-of select='ville'/></td>
    		<td><xsl:value-of select='nom'/></td>
    	</tr>
    </xsl:template>

</xsl:stylesheet>