<?xml version='1.0' encoding='utf-8'?>

<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>

	<xsl:output method='xml' version='1.0' encoding='ISO-8859-1'/>

	<xsl:template match='PLANT/node()'>
		<xsl:copy>
			<xsl:apply-templates select='node()'/>
		</xsl:copy>
	</xsl:template>

	<xsl:template match='PLANT/LIGHT'/>

	<xsl:template match='/'>
		<CATALOG>
			<xsl:for-each select='/CATALOG/PLANT/LIGHT'>
				<xsl:variable name='light' select='.'/>
				<LIGHT>
					<EXPOSURE><xsl:value-of select='$light'/></EXPOSURE>

					<xsl:for-each select='../../PLANT'>
						<xsl:if test='LIGHT=$light'>
							<PLANT>
								<xsl:apply-templates select='.'/>
							</PLANT>
						</xsl:if>
					</xsl:for-each>
				</LIGHT>
			</xsl:for-each>
		</CATALOG>
	</xsl:template>

</xsl:stylesheet>
