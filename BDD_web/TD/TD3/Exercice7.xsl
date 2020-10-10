<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" encoding="utf-8" indent="yes"/>

	<xsl:template name="nb-per-auteur">
		<xsl:param name="param-auteur"/>
		<xsl:value-of select="count(/booker/award[author=$param-auteur])"/>
	</xsl:template>

	<xsl:template match="/booker">
		<html>
			<body>
				<h1>Auteurs (nombres de prix)</h1>
				<ul>
					<xsl:for-each select="award">
						<li>
							<xsl:value-of select="author"/>
							(<xsl:call-template name="nb-per-auteur">
								<xsl:with-param name="param-auteur">
									<xsl:value-of select="author"/>
								</xsl:with-param>
							</xsl:call-template>)
						</li>
					</xsl:for-each>
				</ul>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>