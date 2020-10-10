<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" encoding="utf-8" indent="yes"/>

	<xsl:template match="/booker">
		<html>
			<head>
				<title>Lauréats Booker Prize</title>
			</head>
			<body>
				<h1>Lauréats Booker Prize</h1>
				<xsl:for-each select="award">
					<b>Auteur</b> : <xsl:value-of select="author"/><br/>
					<b>Titre</b> : <xsl:value-of select="title"/><br/>
					<b>Année</b> : <xsl:value-of select="year"/><br/>
					<br/>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>

