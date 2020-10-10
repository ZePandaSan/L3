<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" encoding="utf-8" indent="yes"/>

	<xsl:template match="/booker">
		<html>
			<body>
				<h1>Livres par ordre croissant des années d'attribution des prix</h1>

				<ul>
					<xsl:for-each select="award">
						<xsl:sort select="year"/>
						<li><xsl:value-of select="title"/> (<xsl:value-of select="year"/>)</li>
					</xsl:for-each>
				</ul>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
