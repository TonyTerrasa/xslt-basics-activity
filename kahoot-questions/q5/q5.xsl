<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
    <html>
        <head>
            <title>HTML document</title>
        </head>
        <body> 
            <xsl:apply-templates/>
        </body>
    </html>
    </xsl:template>

    <xsl:template match="module">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="profesor">
        <xsl:value-of select="."/>
    </xsl:template>

</xsl:stylesheet>

