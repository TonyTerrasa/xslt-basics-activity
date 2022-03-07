<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html> 
<body>
  <h1>ASIR Cycle</h1>


  <h2>Cycle Overview</h2>
        <p>In this cycle, you will learn about the administration of digital systems. There are a total of <b><xsl:value-of select="count(cycle/module)"/></b> modules totalling to <b><xsl:value-of select="sum(cycle/module/@hours)"/></b> hours.</p>

<p>
The list of classes is below. For more detailed information on the modules, see the <a href="#module-details">course details section</a>:
    <ul>
        <xsl:for-each select="cycle/module">
        <xsl:sort select="name" />
        <li><xsl:value-of select="name" /> (<xsl:value-of select="@hours"/>hrs)</li>
        </xsl:for-each>
    </ul>
</p>


  <h2 id="module-details">Module List: Detailed</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Module Name</th>
      <th style="text-align:left">Professor</th>
      <th style="text-align:left">Number of Sessions</th>
      <th style="text-align:left">Number of Hours</th>
    </tr>
    <xsl:for-each select="cycle/module">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="profesor"/></td>
      <td><xsl:value-of select="@sessions"/></td>
      <td><xsl:value-of select="@hours"/></td>
    </tr>
    </xsl:for-each>
    <tr>
        <td><b>Total</b></td>
      <td></td>
      <td><b> <xsl:value-of select="sum(cycle/module/@sessions)"/></b> </td>
      <td><b> <xsl:value-of select="sum(cycle/module/@hours)"/></b> </td>
    </tr>
  </table>
</body>
</html>

</xsl:template>
</xsl:stylesheet>
