<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" encoding="utf-8" indent="yes"/>

	<xsl:template match="/booker">
		<html>
			<head>
				<title>Exercice 3</title>
			</head>
			<body>
				<h1>Auteurs d'un livre ayant un prix > 65€</h1>

				<ul>
					<xsl:for-each select="award">
						<xsl:if test="title/@price>65">
							<li><xsl:value-of select="author"/></li>
						</xsl:if>
					</xsl:for-each>
				</ul>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>