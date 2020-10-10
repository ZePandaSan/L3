<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" encoding="utf-8" indent="yes"/>

	<xsl:template match="/booker">
		<html>
			<head>
				<title>Auteurs</title>
			</head>
			<body>
				<h1>Auteurs</h1>
				<ul>
					<xsl:for-each select="award">
						<li><xsl:value-of select="author"/></li>
					</xsl:for-each>
				</ul>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
