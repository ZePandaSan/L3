<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    >

    <xsl:output method='html' encoding='UTF-8' indent="yes"/>

    <xsl:template match="/Pays/pays">
		<tr>
			<td><xsl:value-of select="nom"/></td>
			<td><xsl:value-of select="capital"/></td>
			<td><xsl:value-of select="Population-en-million"/> (<xsl:value-of select="Population-en-million/@id"/>)</td>
		</tr>
	</xsl:template>

	<xsl:template match="/">
		<html>
			<body>
				<table border="2">
					<thead>
						<tr>
							<th>Pays</th>
							<th>Capital</th>
							<th>Population (année)</th>
						</tr>
					</thead>
					<tbody>
						<xsl:for-each select="/Pays/pays">
							<xsl:sort select="Population-en-million"/>
							<xsl:apply-templates select="."/>
						</xsl:for-each>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>

