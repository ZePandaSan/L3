<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" encoding="utf-8" indent="yes"/>

	<xsl:template match="/booker">
		<html>
			<body>
				<h1>Auteurs</h1>
				<ul>
					<xsl:for-each select="award">
						<li>
							<xsl:choose>
								<xsl:when test="author/@gender='m'">
									<i><xsl:value-of select="author"/></i>
								</xsl:when>
								<xsl:when test="author/@gender='f'">
									<b><xsl:value-of select="author"/></b>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="author"/>
								</xsl:otherwise>
							</xsl:choose>
						</li>
					</xsl:for-each>
				</ul>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
