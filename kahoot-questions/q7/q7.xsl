<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
    <html>
        <head>
            <title>HTML document</title>
        </head>
        <body> 
            <xsl:for-each select="cycle/module">
                <p>Mod Name: <xsl:value-of select="name"/></p>
                <p>Prof: <xsl:value-of select="profesor"/></p>
            </xsl:for-each>
        </body>
    </html>
    </xsl:template>

</xsl:stylesheet>

