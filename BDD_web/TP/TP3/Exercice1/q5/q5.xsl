<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>

	<xsl:output method='xml' version='1.0' encoding='utf-8'/>

	<xsl:template name='get_nom_club'>
		<xsl:param name='id'/>
		<xsl:value-of select='../../../clubs/club[@id=$id]/nom'/>
	</xsl:template>

	<xsl:template match='club'>
		<club>
			<xsl:variable name='id'><xsl:value-of select='@id'/></xsl:variable>
			<nom><xsl:value-of select='nom'/></nom>
			<ville><xsl:value-of select='ville'/></ville>
			<rencontres>
				<domicile>
					<xsl:for-each select="../../journees/journee/rencontre[receveur=$id]">
						<rencontre>
							<club>
								<xsl:call-template name='get_nom_club'>
									<xsl:with-param name='id' select='invite'/>
								</xsl:call-template>
							</club>
							<score><xsl:value-of select='score'/></score>
						</rencontre>
					</xsl:for-each>
				</domicile>
				<exterieur>
					<xsl:for-each select="../../journees/journee/rencontre[invite=$id]">
						<rencontre>
							<club>
								<xsl:call-template name='get_nom_club'>
									<xsl:with-param name='id' select='receveur'/>
								</xsl:call-template>
							</club>
							<score><xsl:value-of select='score'/></score>
						</rencontre>
					</xsl:for-each>
				</exterieur>
			</rencontres>
		</club>
	</xsl:template>

	<xsl:template match='/'>
		<clubs>
			<xsl:apply-templates select="//clubs/club"/>
		</clubs>
	</xsl:template>

</xsl:stylesheet>
