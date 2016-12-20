<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<table border="1">
<th>Номер</th>
<th>Число</th>
<xsl:for-each select="hash/inputed/inputed">
<tr>
<td><xsl:value-of select="position()"/></td>
<td><xsl:value-of select="."/></td>
</tr>
</xsl:for-each>
<tr>
<td>Все последовательности</td>
<td><xsl:value-of select="hash/all"/></td>
</tr>
<tr>
<td>Количество последовательностей</td>
<td><xsl:value-of select="hash/kolvo-posl"/></td>
</tr>
<tr>
<td>Самая длинная последовательность</td>
<td><xsl:value-of select="hash/max-posl"/></td>
</tr>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>